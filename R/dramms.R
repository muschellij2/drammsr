
#' @title Run DRAMMS
#'
#' @description Runs DRAMMS on source and target
#' @param source Filename (or nifti) to match to target
#' @param target Filename (or nifti) to match source to to target
#' @param outfile Output filename
#' @param outdef output deformation field
#' @param retimg return nifti object versus output image
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
dramms <- function(
  source, # Filename (or nifti) to match to target
  target, # Filename (or nifti) to match source to to target
  outfile = NULL, # Output filename
  outdef = NULL, # output deformation field
  retimg = FALSE # return nifti object versus output image
  ){
  source = checkimg(source)
  target = checkimg(target)
  outfile = check_outfile(outfile = outfile, retimg = retimg, fileext = ".nii.gz")
  
  args = c("--source"=source, 
           "--target"=target,
           "--outimg"=outfile,
           "--outdef"=outdef)
  cmd = "dramms"
  cmd = dramms_cmd_maker(cmd=cmd, args = args)

  res = system(cmd)
  if (res != 0){
    stop("DRAMMS command failed")
  }
  
  if (retimg){
    img = readNIfTI(outfile, reorient=FALSE)
    return(img)
  }
  return(outfile)
}
