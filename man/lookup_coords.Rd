% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coords.R
\name{lookup_coords}
\alias{lookup_coords}
\title{Get coordinates of specified location.}
\usage{
lookup_coords(address, components = NULL, ...)
}
\arguments{
\item{address}{Desired location typically in the form of place
name, subregion, e.g., address = "lawrence, KS". Also accepts the
name of countries, e.g., address = "usa", address = "brazil" or
states, e.g., address = "missouri" or cities, e.g., address =
"chicago". In most cases using only address should be sufficient.}

\item{components}{Unit of analysis for address e.g., components =
"country:US". Potential components include postal_code, country,
administrative_area, locality, route.}

\item{...}{Additional arguments passed as parameters in the HTTP
request}
}
\value{
Object of class coords.
}
\description{
Convenience function for looking up latitude/longitude coordinate
information for a given location. Returns data as a special
"coords" object, which is specifically designed to interact
smoothly with other relevant package functions.
}
\examples{

\dontrun{

## get coordinates associated with the following addresses/components
sf <- lookup_coords("san francisco, CA", "country:US")
usa <- lookup_coords("usa")
lnd <- lookup_coords("london")
bz <- lookup_coords("brazil")

## pass a returned coords object to search_tweets
bztw <- search_tweets(geocode = bz)

## or stream tweets
ustw <- stream_tweets(usa, timeout = 10)

}

}
\seealso{
Other geo: \code{\link{lat_lng}}
}
