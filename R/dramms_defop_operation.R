
#' @title Run DRAMMS Multiplication or Division 
#'
#' @description Runs dramms_defop with multiplication or division
#' @param def deformation field
#' @param factor float to multiply or divide
#' @param operation Operation to perform: multiply, divide, square, or sqrt
#' @param retimg return nifti object versus output image
#' @param outimg Output filename 
#' @import oro.nifti
#' @import fslr
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_defop_operation <- function(
  def = NULL, # output deformation field
  factor = NULL,
  operation = c("multiply", "divide", "square", "sqrt"),
  outimg = NULL, # Output filename
  retimg = FALSE # return nifti object versus output image
){
  source = checkimg(def)
  operation = match.arg(operation, c("multiply", "divide", "square", "sqrt"))
  #   dramms --source sourceimage.hdr --target targetimage.nii
  #   --outimg outimage.img --outdef outdef.nii.gz  
  #   cmd = 

  outimg = check_outfile(outfile = outimg, retimg = retimg)
  
  ################
  # Check for factor or not
  ################
  if (operation %in% c("multiply", "divide")){
    if (is.null(factor)){
      stop("Factor was not specified when operation was divide or multiply")
    }
  }
  if (operation %in% c("square", "sqrt")){
    if (!is.null(factor)){
      warning("Factor was specified with square or sqrt, setting NULL")
      factor = NULL
    }
  }  
  ################
  # Create Command
  ################
  args = c(factor, 
           def,
           outimg)
  names(args) = c(paste0("--", operation), rep("", length(args)-1))
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
