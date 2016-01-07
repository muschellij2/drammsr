#' @title Run DRAMMS RAVENS Map
#'
#' @description Runs DRAMMS Warping on source and target
#' @param label label image in subject space. 
#' Note that the label image must be in uint8 (aka byte, or uchar) datatype.
#' @param template template image, where RAVENS map will reside.
#' @param def input deformation field
#' @param prefix prefix for all RAVENS maps.
#' @param scale_factor scale factor (default: 1000)
#' @param verbose (logical) print out command before running
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return Result of \code{\link{system}} command
dramms_ravens <- function(
  label, # Filename (or nifti) to apply deformation field
  template, # output deformation field
  def,
  prefix,
  scale_factor = NULL,
  verbose = TRUE) {

  nlabel = check_nifti(label)
  label_datatype = convert.datatype(datatype(nlabel))
  stopifnot(label_datatype %in% c("UINT8"))
  
  label = checkimg(label)
  template = checkimg(template)
  def = checkimg(def)

  args = c(label, 
           template, 
           def,
           prefix)
  names(args) = NULL
  if (!is.null(scale_factor)) {
    args = c(args, 
             "-f" = scale_factor)
  }
  cmd = "dramms-ravens"
  cmd = dramms_cmd_maker(cmd = cmd, args = args)
  
  if (verbose) {
    cat(cmd, "\n")
  }
  res = system(cmd)
  if (res != 0) {
    stop("DRAMMS command failed")
  }
  
  return(res)
}
