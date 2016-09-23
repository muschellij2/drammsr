#' @title Run DRAMMS RAVENS Map
#'
#' @description Runs DRAMMS Warping on source and target
#' @param label label image in subject space. 
#' Note that the label image must be in uint8 (aka byte, or uchar) datatype.
#' @param labs vector of values of the labels in an image.  If not 
#' specified, will use all labels from \code{label} image that are positive
#' and non-zero.  Will fail if more than 5.
#' @param template template image, where RAVENS map will reside.
#' @param def input deformation field
#' @param prefix prefix for all RAVENS maps.
#' @param scale_factor scale factor (default: 1000)
#' @param verbose (logical) print out command before running
#' 
#' @export
#' @return Result of \code{\link{system}} command
#' @importFrom oro.nifti convert.datatype datatype
dramms_ravens <- function(
  label, # Filename (or nifti) to apply deformation field
  labs = NULL,
  template, # output deformation field
  def,
  prefix,
  scale_factor = NULL,
  verbose = TRUE) {
  
  nlabel = check_nifti(label)
  if ( is.null(labs) ) {
    labs = unique(c(nlabel))
    labs = labs[ labs > 0 ]
    labs = sort(labs)
  }
  if (length(labs) == 0) {
    stop("No positive labels in the image")
  }
  if (length(labs) > 5) {
    stop("More than 5 labels in the image, specify labs")
  }
  labs = paste(labs, collapse = ",")
  
  label_datatype = convert.datatype(datatype(nlabel))
  stopifnot(label_datatype %in% c("UINT8"))
  
  label = checkimg(label)
  template = checkimg(template)
  def = checkimg(def)
  
  args = c(label, 
           template, 
           def,
           prefix)
  names(args) = NULL
  #######################
  # Must put the -f or -m arguments first!!!!!!!!!!!!!
  #######################
  if (!is.null(scale_factor)) {
    args = c("-f" = scale_factor, args)
  }
  args = c("-m" = labs, 
           args)
  cmd = "dramms-ravens"
  cmd = dramms_cmd_maker(cmd = cmd, args = args)
  
  # need to take out the spaces (I think) -probably not
  # cmd = gsub("  ", " ", cmd)
  # cmd = gsub("\\s+", " ", cmd)
  
  if (verbose) {
    cat(cmd, "\n")
  }
  res = system(cmd)
  if (res != 0) {
    stop("DRAMMS command failed")
  }
  
  return(res)
}
