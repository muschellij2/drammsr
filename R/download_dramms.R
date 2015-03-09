#' @title Download DRAMMS Source
#'
#' @description Download the source .tar.gz of DRAMMS
#' @param version Version of DRAMMS to download
#' @param ... arguments to pass to \code{\link{download.file}}
#' @return Filename of downloaded file
download_dramms <- function(
  version = "current", # Version of DRAMMS to download
  ... # arguments to pass to \code{\link{download.file}}
  ){
  base = "http://www.cbica.upenn.edu/sbia/software/distributions/dramms-"
  url = paste0(base, version, "-source.tar.gz")
  fname = basename(url)
  destfile = file.path(tempdir(), fname)
  download.file(url, destfile = destfile, ...)
  return(destfile)
}
  

#' @title Install DRAMMS Source
#'
#' @description Install the source .tar.gz of DRAMMS
#' @param tarfile Name ofDRAMMS source file
#' @param install_dir where to put
#' @return NULL
install_dramms = function(
  tarfile = NULL, 
  install_dir = "/usr/local/dramms"){
  if (is.null(tarfile)){
    tarfile = download_dramms()
  }
  gd = getwd()
  untar(tarfile = tarfile, exdir = tempdir(), compressed = "gzip")
  tarname = dirname(untar(tarfile = tarfile, exdir = tempdir(), 
                  list = TRUE, compressed = "gzip")[1])
  ##########
  # Getting build number
  ##########
  version = gsub("dramms-(.*)-source.*", "\\1", tarname)
  tarname = paste0("dramms-", version, "-source")
  outdir = file.path(tempdir(), tarname)
  builddir = file.path(outdir, "build")
  cmd = sprintf('cmake %s -DCMAKE_INSTALL_PREFIX="%s"; make;', builddir, install_dir)
  res = system(cmd)
  return(res)  
}
