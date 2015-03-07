
#' @title Create DRAMMS command
#'
#' @description Create header for DRAMMS command
#' @param cmd Command to be executed
#' @export
#' @return character string of command
dramms_cmd_maker <- function(
  cmd = NULL,
  args = NULL
){
  if (is.null(cmd)){
    return("")
  }
  progdir = system.file("dramms", package="drammsr")  
  bindir = file.path(progdir, "bin")
  cmd = file.path(bindir, cmd)
  args = dramms_parse_args(args)
  cmd = paste0(cmd, " ", args)
  return(cmd)
}


#' @title Parse DRAMMS Argument
#'
#' @description Create argument character for DRAMMS command
#' @param args Arguments to be evaluated
#' @export
#' @return character string of arguments
dramms_parse_args = function(args){
  name_args = names(args)
  if (is.null(name_args)){
    name_args = rep("", length(args))
  }
  stopifnot(length(name_args) == length(args))
  args = paste(name_args, args)
  args = paste(args, sep = "", collapse = " ")
  return(args)
}