
#' @title Run DRAMMS with RAVENS option
#'
#' @description Runs DRAMMS on source and target
#' @param source Filename (or nifti) to match to target
#' @param target Filename (or nifti) to match source to to target
#' @param outfile Output filename
#' @param outdef output deformation field
#' @param retimg return nifti object versus output image
#' @param opts Extra arguments to pass to \code{dramms}
#' @param label label image in subject space. 
#' Note that the label image must be in uint8 (aka byte, or uchar) datatype.
#' @param labs vector of values of the labels in an image.  If not 
#' specified, will use all labels from \code{label} image that are positive
#' and non-zero.  Will fail if more than 5.
#' @param ravens_prefix prefix for all RAVENS maps. 
#' @param verbose (logical) print out command before running 
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
#' @examples \dontrun{
#' require(fslr)
#' temp = file.path(fsldir(), "data", "standard", "MNI152_T1_1mm.nii.gz")
#' # get file
#' #  https://github.com/muschellij2/FSLR_Data/raw/master/01-Baseline_T1.nii.gz
#' brain = file.path(fsldir(), "data", "standard", "MNI152_T1_1mm_brain.nii.gz")
#' res = dramms(source = brain, target = temp, retimg = TRUE)
#' }
dramms_with_ravens <- function(
  source, # Filename (or nifti) to match to target
  target, # Filename (or nifti) to match source to to target
  outfile = NULL, # Output filename
  outdef = NULL, # output deformation field
  retimg = FALSE, # return nifti object versus output image
  opts = NULL,
  label = NULL, # Filename (or nifti) to apply deformation field
  labs = NULL,  
  ravens_prefix = NULL,
  verbose = TRUE
){
  source = checkimg(source)
  target = checkimg(target)
  outfile = check_outfile(outfile = outfile, 
                          retimg = retimg, 
                          fileext = ".nii.gz")
  
  lab_args = NULL
  if (!is.null(label)){
    if (is.null(ravens_prefix)) {
      stop("RAVENS prefix must be specified!")
    }
    nlabel = check_nifti(label)
    if ( is.null(labs) ) {
      labs = unique(c(nlabel))
      labs = labs[ labs > 0 ]
      labs = sort(labs)
    }
    if (length(labs) == 0) {
      stop("No positive labels in the image")
    }
    if (length(labs) > 5) {
      stop("More than 5 labels in the image, specify labs")
    }
    labs = paste(labs, collapse = ",")
    label = checkimg(label)
    lab_args = c(
      "-L" = label,
      "-R" = ravens_prefix,
      "-l" = labs)
  }  
  
  args = c("--source" = source, 
           "--target" = target,
           "--outimg" = outfile,
           "--outdef" = outdef,
           lab_args,
           opts)
  
  cmd = "dramms"
  cmd = dramms_cmd_maker(cmd = cmd, args = args)
  
  if (verbose) {
    cat(cmd, "\n")
  }  
  res = system(cmd)
  
  if (res != 0) {
    stop("DRAMMS command failed")
  }
  
  if (retimg) {
    img = readNIfTI(outfile, reorient = FALSE)
    return(img)
  }
  return(outfile)
}
