#' @title Run DRAMMS Deformation Coordinate
#'
#' @description Runs dramms_defop mapping of coordinates
#' @param def deformation field
#' @param coord Character or vector to be pasted of coordinates
#' @export
#' @return A character of the result of the system command.
dramms_defop_invert <- function(
  def = NULL, # output deformation field
  coord = NULL
){
  source = checkimg(def)
  coord = paste(coord, collapse = ",")
  
  args = c("--coord"=coord, 
           def)
  cmd = "dramms-defop"
  cmd = dramms_cmd_maker(cmd=cmd, args = args)
  
  ans = system(cmd, intern=TRUE)
  res = ifelse(is.null(attr(ans, "status")), 0, attr(ans, "status"))
  if (res != 0){
    stop("DRAMMS command failed")
  }
  return(ans)
}
