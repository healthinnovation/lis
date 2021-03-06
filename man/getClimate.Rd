% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getClimate.R
\name{getClimate}
\alias{getClimate}
\title{Extract climate data of TerraClimate}
\usage{
getClimate(year, bands, region, fun = "mean")
}
\arguments{
\item{year}{is date format for extract the variable}

\item{bands}{is a specif variable of climate}

\item{region}{is a sf object}

\item{fun}{is a type of fucntion for extract statistic zonal ('mean','median','sum','count')}
}
\value{
a sf object with the new variables
}
\description{
A function that extract a time series of climate variables
}
\details{
Name of some bands
\itemize{
\item pr: Precipitation accumulation in mm
\item ro: Runoff, derived using a one-dimensional soil water balance model in mm
\item tmmn: Minimum temperature in C°
\item tmmx: Maximum temperature in C°
}
}
\examples{
\dontrun{
library(lis)
library(rgee)
library(sf)
ee_Initialize()

region <- st_read('../district.gpkg')
data <- getClimate(year =2009,bands = 'pr',region=region, fun = 'mean')
}
}
