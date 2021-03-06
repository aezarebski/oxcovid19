% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_data.R
\name{get_data}
\alias{get_data}
\title{Get data from specified table based on specified query parameters}
\usage{
get_data(
  tbl_name,
  .source = NULL,
  ccode = NULL,
  .start = NULL,
  .end = Sys.Date(),
  adm = NULL
)
}
\arguments{
\item{tbl_name}{Name of table available in OxCOVID19 Database. Should be
one of the table names given by a call to \link{list_tables}.}

\item{.source}{Source of data. Should be specified as per source
code shown in \link{data_sources} for specified table. Default is NULL
which returns data from specified table from all data sources.}

\item{ccode}{Three character ISO country code for country to which data is
required. Defaults to NULL which returns data for all countries.}

\item{.start}{Starting date in \code{YYYY-MM-DD} character format of data
to retrieve. Defaults to NULL which returns data from the earliest date
available.}

\item{.end}{End date in \code{YYYY-MM-DD} character format of data to
retrieve. Defaults to current date as speciifed by \link{Sys.Date}.}

\item{adm}{Numeric value for administrative level data required. Possible
values are 0 for whole country, 1 for administrative level 1, 2 for
administrative level 2 and 3 for administrative level 3. Default is NULL
which returns data for all administrative divisions.}
}
\value{
A tibble of specified table dataset based on specified parameters. If
  all parameters are kept to default, output is the same as that when
  \link{get_table} is used with \code{tbl_name} based on specified table.
  However, this function will retrieve the full data into a local tibble
  which will take considerable time. It is therefore recommended that
  this function be used when the specific data requirements are already
  clearly determined. For data exploration, \link{get_table} should be used
  instead.
}
\description{
Get data from specified table based on specified query parameters
}
\examples{
## Get epidemiology data for the the whole of the UK from the ECDC for all
## available dates
get_data(tbl_name = "epidemiology",
         .source = "WRD_ECDC",
         ccode = "GBR",
         adm = 0)

}
\author{
Ernest Guevarra
}
