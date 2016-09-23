#' @title Calculate Jacobian Image
#'
#' @description Runs DRAMMS-jacobian on deformation image to determine jacobian
#' @param source Filename (or nifti) to match to target
#' @param target Filename (or nifti) to match source to to target
#' @param def input deformation field
#' @param outfile Output deformation filename
#' @param retimg return nifti object versus output image
#' @param smooth_def smooth deformation field before calculating
#' @param smooth_jacobian smooth calculated Jacobian map
#' @param cut_jacobian cut-off Jacobian values at 0
#' @param xy_switch_off turn x-y switch off 
#' (default: on for default input deformation in DRAMMS format)
#' @param log_jacobian take log of jacobian determinant
#' @export
#' @return If \code{retimg = TRUE}, a \code{nifti} object.  
#' If \code{retimg = FALSE}, a the filename of the output image.
dramms_jacobian <- function(
  source, # Filename (or nifti) to match to target
  target, # Filename (or nifti) to match source to to target  
  def, # output deformation field
  outfile = NULL, # Output filename
  retimg = FALSE, # return nifti object versus output image
  smooth_def = FALSE, # smooth deformation field before calculating
  smooth_jacobian = FALSE, # smooth calculated Jacobian map
  cut_jacobian = FALSE, # cut-off Jacobian values at 0
  xy_switch_off = FALSE, # x-y switch off (default: on for default input deformation in DRAMMS format)
  log_jacobian = FALSE # take log(JacobianDet)
){
  source = checkimg(source)
  target = checkimg(target)
  def = checkimg(def)  
  outfile = check_outfile(outfile = outfile, retimg = retimg, fileext = ".nii.gz")
  
  repper = function(x, newval){
    stopifnot(inherits(x, "logical"))
    if (x){
      x = newval
    } else {
      x = NULL
    }
    return(x)
  }
  xy_switch_off = repper(xy_switch_off, "-W")
  smooth_def = repper(smooth_def, "-s")
  smooth_jacobian = repper(smooth_jacobian, "-S")
  cut_jacobian = repper(cut_jacobian, "-C")
  log_jacobian = repper(log_jacobian, "-L")
  
  args = c(def, 
           outfile,
           "-f"=source, 
           "-t"=target,
           xy_switch_off,
           smooth_def, 
           smooth_jacobian,
           cut_jacobian,
           log_jacobian)
  names(args)[1:2]= ""
  cmd = "dramms-jacobian"
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
