
#' @title Run DRAMMS
#'
#' @description Runs DRAMMS on source and target
#' @param source Filename (or nifti) to match to target
#' @param target Filename (or nifti) to match source to to target
#' @param outimg Output filename
#' @param outdef output deformation field
#' @param retimg return nifti object versus output image
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms <- function(
  source, # Filename (or nifti) to match to target
  target, # Filename (or nifti) to match source to to target
  outimg = NULL, # Output filename
  outdef = NULL, # output deformation field
  retimg = FALSE # return nifti object versus output image
  ){
#   dramms --source sourceimage.hdr --target targetimage.nii
#   --outimg outimage.img --outdef outdef.nii.gz  
  cmd = 
}
