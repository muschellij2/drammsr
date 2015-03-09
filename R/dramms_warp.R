
#' @title Run DRAMMS Warping
#'
#' @description Runs DRAMMS Warping on source and target
#' @param source Filename (or nifti) to match to target
#' @param def input deformation field
#' @param outimg Output filename
#' @param retimg return nifti object versus output image
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_warp <- function(
  source, # Filename (or nifti) to apply deformation field
  def = NULL, # output deformation field
  outimg = NULL, # Output filename
  interpolation = c("trilinear", "nearest.neighbor"),
  retimg = FALSE # return nifti object versus output image
){
  source = checkimg(source)
  interpolation = match.arg(interpolation, c("trilinear", "nearest.neighbor"))
  interpolation = ifelse(interpolation == "nearest.neighbor", "-n", "")
  
  outimg = check_outfile(outfile = outimg, retimg = retimg, fileext = ".nii.gz")
    
  args = c(source, 
           def,
           outimg,
           interpolation)
  names(args) = NULL
  cmd = "dramms-warp"
  cmd = dramms_cmd_maker(cmd=cmd, args = args)
  
  res = system(cmd)
  if (res != 0){
    stop("DRAMMS command failed")
  }
  
  if (retimg){
    img = readNIfTI(outimg, reorient=FALSE)
    return(img)
  }
  return(outimg)
}
