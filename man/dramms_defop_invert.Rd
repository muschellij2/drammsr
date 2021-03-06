% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dramms_defop_invert.R
\name{dramms_defop_invert}
\alias{dramms_defop_invert}
\title{Run DRAMMS Deformation Inversion}
\usage{
dramms_defop_invert(def = NULL, outfile = NULL, retimg = FALSE)
}
\arguments{
\item{def}{deformation field}

\item{outfile}{Output filename}

\item{retimg}{return nifti object versus output image}
}
\value{
If \code{retimg = TRUE}, a \code{nifti} object.  
If \code{retimg = FALSE}, a the filename of the output image.
}
\description{
Runs dramms_defop with inversion on deformation
}
