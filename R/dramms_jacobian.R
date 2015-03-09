#' @title Calculate Jacobian Image
#'
#' @description Runs DRAMMS-jacobian on deformation image to determine jacobian
#' @param def input deformation field
#' @param outimg Output deformation filename
#' @param retimg return nifti object versus output image
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_jacobian <- function(
  def, # output deformation field
  outimg = NULL, # Output filename
  retimg = FALSE # return nifti object versus output image
){
  def = checkimg(def)
  outimg = check_outfile(outfile = outimg, retimg = retimg, fileext = ".nii.gz")
  
  args = c(def,
           outimg)
  names(args) = NULL
  cmd = "dramms-jacobian"
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
