
#' @title Run DRAMMS Multiplication or Division 
#'
#' @description Runs dramms_defop with multiplication or division
#' @param def deformation field
#' @param factor float to multiply or divide
#' @param operation Operation to perform: multiply or divide 
#' @param retimg return nifti object versus output image
#' @param outimg Output filename 
#' @import oro.nifti
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_defop_operation <- function(
  def = NULL, # output deformation field
  factor = 1,
  operation = c("multiply", "divide"),
  outimg = NULL, # Output filename
  retimg = FALSE # return nifti object versus output image
){
  source = checkimg(def)
  operation = match.arg(operation, c("multiply", "divide"))
  #   dramms --source sourceimage.hdr --target targetimage.nii
  #   --outimg outimage.img --outdef outdef.nii.gz  
  #   cmd = 
  check_outfile = function(outfile, retimg){
    if (retimg){
      if (is.null(outfile)) {
        outfile = paste0(tempfile(), ".nii.gz")
      } 
    } else {
      stopifnot(!is.null(outfile))
    }  
    return(path.expand(outfile))
  }
  outimg = check_outfile(outfile = outimg, retimg = retimg)
  
  args = c(factor, 
           def,
           outimg)
  names(args) = c(paste0("--", operation), rep("", 2))
  cmd = "dramms-defop"
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
