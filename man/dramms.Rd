% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dramms.R
\name{dramms}
\alias{dramms}
\title{Run DRAMMS}
\usage{
dramms(
  source,
  target,
  outfile = NULL,
  outdef = NULL,
  retimg = FALSE,
  opts = NULL,
  verbose = TRUE
)
}
\arguments{
\item{source}{Filename (or nifti) to match to target}

\item{target}{Filename (or nifti) to match source to to target}

\item{outfile}{Output filename}

\item{outdef}{output deformation field}

\item{retimg}{return nifti object versus output image}

\item{opts}{Extra arguments to pass to \code{dramms}}

\item{verbose}{(logical) print out command before running}
}
\value{
If \code{retimg = TRUE}, a \code{nifti} object.  
If \code{retimg = FALSE}, a the filename of the output image.
}
\description{
Runs DRAMMS on source and target
}
\examples{
\dontrun{
require(fslr)
temp = file.path(fsldir(), "data", "standard", "MNI152_T1_1mm.nii.gz")
# get file
#  https://github.com/muschellij2/FSLR_Data/raw/master/01-Baseline_T1.nii.gz
brain = file.path(fsldir(), "data", "standard", "MNI152_T1_1mm_brain.nii.gz")
res = dramms(source = brain, target = temp, retimg = TRUE)
}
}
