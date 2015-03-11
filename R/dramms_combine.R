
#' @title Combine DRAMMS Deformation
#'
#' @description Combines DRAMMS deformations 
#' @param indef1 Input Deformation Field 1
#' @param indef2 Input Deformation Field 2
#' @param outimg output deformation field fielname
#' @param retimg return nifti object versus output image
#' @param operation Way to combine the deformations
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_combine <- function(
  indef1, # input deformation field
  indef2, # input deformation field
  outimg = NULL, # Output filename
  retimg = FALSE, # return nifti object versus output image
  operation = c("concatenate", "add", "subtract" ,"mean")
){
  indef1 = checkimg(indef1)
  indef2 = checkimg(indef2)
  outimg = check_outfile(outfile = outimg, 
                         retimg = retimg, fileext = ".nii.gz")
  operation = match.arg(operation, c("concatenate", "add", "subtract" ,"mean"))
  operation = paste0("--", operation)
  
  
  args = c(operation, 
           indef1, 
           indef2,
           outimg)
  names(args) = NULL
  cmd = "dramms-combine"
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
