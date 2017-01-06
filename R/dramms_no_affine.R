
#' @title DRAMMS without Affine
#'
#' @description Runs DRAMMS on source and target without Affine transformation
#' @param ... arguments to pass to \code{\link{dramms}} 
#' @param opts Extra arguments to pass to \code{dramms}, \code{-a 0} will be added
#' @return Output from \code{\link{dramms}}
#' 
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_no_affine <- function(
  ...,
  opts = NULL
){
  opts = paste("-a 0", opts)
  dramms(
    ...,
    opts = opts)
}