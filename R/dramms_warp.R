
#' @title Run DRAMMS Warping
#'
#' @description Runs DRAMMS Warping on source and target
#' @param source Filename (or nifti) to match to target
#' @param def input deformation field
#' @param outfile Output filename
#' @param interpolation Trilinear or nearest-neighbor interpolation for warping
#' @param template Template used for argument -t if an affine transformed required
#' @param retimg return nifti object versus output image
#' @param verbose (logical) print out command before running
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
#' @note As DRAMMS use FLIRT to do affine transformations, please use
#' \code{\link{flirt}} to apply transformation of affine .mat file.
dramms_warp <- function(
  source, # Filename (or nifti) to apply deformation field
  def = NULL, # output deformation field
  outfile = NULL, # Output filename
  interpolation = c("trilinear", "nearest.neighbor"),
  template = NULL,
  retimg = FALSE, # return nifti object versus output image
  verbose = TRUE
){
  source = checkimg(source)
  interpolation = match.arg(interpolation, c("trilinear", "nearest.neighbor"))
  interpolation = ifelse(interpolation == "nearest.neighbor", "-n", "")
  
  outfile = check_outfile(outfile = outfile, retimg = retimg, fileext = ".nii.gz")
  if (!is.null(template)){
    template = checkimg(template)
  }
  
  args = c(interpolation, source, 
           def,
           outfile)
  names(args) = NULL
  args = c("-t" = template, 
           args)
  cmd = "dramms-warp"
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
