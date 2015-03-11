
#' @title Run DRAMMS Conversion
#'
#' @description Convert DRAMMS deformation to new output
#' @param indef input deformation field
#' @param outimg output deformation field fielname
#' @param retimg return nifti object versus output image
#' @param field_dim Dimensions of input deformation field or nifti filename to 
#' get dimensions
#' @param field_pixdim Pixel dimensions of input deformation field 
#' or nifti filename to get pixel dimensions
#' @param informat format of input deformation field
#' @param outformat format of output deformation field
#' @param outtype type of output, either deformation field, magnitude of
#' vectors, or x/y/z displacements
#' @param change_3 Change deformation field vectors to three-dimensional
#' displacements
#' @import fslr 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_convert <- function(
  indef, # input deformation field
  outimg = NULL, # Output filename
  retimg = FALSE, # return nifti object versus output image
  field_dim = NULL,
  field_pixdim = NULL,
  informat = c("DRAMMS", "ITK", "FSL"), # format of input deformation field
  outformat = c("DRAMMS", "ITK", "FSL"), # format of input deformation field
  outtype = c("field", "magnitude", "x", "y", "z"),
  change_3 = FALSE #deformation field vectors to three-dimensional displacements
){
  indef = checkimg(indef)
  outimg = check_outfile(outfile = outimg, retimg = retimg, fileext = ".nii.gz")
  
  informat = match.arg(informat, c("DRAMMS", "ITK", "FSL"))
  outformat = match.arg(outformat, c("DRAMMS", "ITK", "FSL"))
  outtype = match.arg(outtype, c("field", "magnitude", "x", "y", "z"))
  outtype = switch(outtype,
                   "field"="-o", 
                     "magnitude"="-m", 
                     "x"="-x", 
                     "y"="-x", 
                     "z"="-z")
  if (change_3){
    change_3 = "-3"
  } else {
    change_3 = NULL
  }
  field_dim = paste(field_dim, sep=",")
  field_pixdim = paste(field_pixdim, sep=",")
  
  names(outimg) = outtype
  args = c("-f"=informat,
           "-d"=field_dim,
           "-p"=field_pixdim,
           "-i"=indef, 
           "-F"=outformat,
           change_3,
           outimg)
  cmd = "dramms-convert"
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
