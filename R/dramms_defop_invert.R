
#' @title Run DRAMMS Deformation Inversion 
#'
#' @description Runs dramms_defop with inversion on deformation
#' @param def deformation field
#' @param retimg return nifti object versus output image
#' @param outfile Output filename 
#' @import oro.nifti
#' @import fslr
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_defop_invert <- function(
  def = NULL, # output deformation field
  outfile = NULL, # Output filename
  retimg = FALSE # return nifti object versus output image
){
  source = checkimg(def)
  outfile = check_outfile(outfile = outfile, retimg = retimg, fileext = ".nii.gz")
  
  args = c("--invert"=def, 
           outfile)
  cmd = "dramms-defop"
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
