% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DEM_request.R
\name{DEM_request}
\alias{DEM_request}
\title{Get metadata and links to available digital elevation models}
\usage{
DEM_request(x)
}
\arguments{
\item{x}{an \code{sf}, \code{sfc} or \code{SpatVector} object with one or more features
(requests are based on the bounding boxes of the provided features)}
}
\value{
a data frame with metadata and links to the digital elevation models
(different formats of digital terrain model, digital surface model and
point clouds)
}
\description{
Get metadata and links to available digital elevation models
}
\examples{
\dontrun{
library(sf)
polygon_path = system.file("datasets/search_area.gpkg", package = "rgugik")
polygon = read_sf(polygon_path)
req_df = DEM_request(polygon)

# simple filtering by attributes
req_df = req_df[req_df$year > 2018, ]
req_df = req_df[req_df$product == "PointCloud" & req_df$format == "LAS", ]
}
}
\seealso{
\code{\link[=tile_download]{tile_download()}}
}
