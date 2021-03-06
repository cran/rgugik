% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models3D_download.R
\name{models3D_download}
\alias{models3D_download}
\title{Download 3D models of buildings for counties}
\usage{
models3D_download(
  county = NULL,
  TERYT = NULL,
  LOD = "LOD1",
  outdir = ".",
  unzip = TRUE,
  ...
)
}
\arguments{
\item{county}{county name in Polish. Check \code{\link[=county_names]{county_names()}} function.}

\item{TERYT}{county ID (4 characters)}

\item{LOD}{level of detail for building models ("LOD1" or "LOD2").
"LOD1" is default. "LOD2" is only available for ten voivodeships
(TERC: "04", "06", "12", "14", "16", "18", "20", "24", "26", "28").
Check \code{\link[=voivodeship_names]{voivodeship_names()}} function.}

\item{outdir}{(optional) name of the output directory;
by default, files are saved in the working directory}

\item{unzip}{TRUE (default) or FALSE, when TRUE the downloaded archive will
be extracted and removed}

\item{...}{additional argument for \code{\link[utils:download.file]{utils::download.file()}}}
}
\value{
models of buildings in Geography Markup Language format (.GML)
}
\description{
Download 3D models of buildings for counties
}
\examples{
\dontrun{
models3D_download(TERYT = c("2476", "2264")) # 3.6 MB
models3D_download(county = "sejneński", LOD = "LOD2") # 7.0 MB
}
}
