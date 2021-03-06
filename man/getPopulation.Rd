% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getPopulation.R
\name{getPopulation}
\alias{getPopulation}
\title{Extract population data of WorldPop}
\usage{
getPopulation(year, region)
}
\arguments{
\item{year}{is date format for extract the variable}

\item{region}{is a sf object}
}
\value{
a sf object with the new variables
}
\description{
A function that extract a time series of the number of population
}
\examples{
\dontrun{
library(lis)
library(rgee)
library(sf)
ee_Initialize()

region <- st_read('../district.gpkg')
data <- getPopulaton(year =2009,region=region)
}
}
