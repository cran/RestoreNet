% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{get.M}
\alias{get.M}
\title{Design matrix M}
\usage{
get.M(y, V, dT, get.h)
}
\arguments{
\item{y}{clone-specific \eqn{t \times p}{t by p} cell count matrix, where t is the number of time-points and p the number of cell types.}

\item{V}{A \eqn{p \times K}{p by K} dimensional net-effect matrix.}

\item{dT}{A (t-1)-dimensional vector of the time-increments.}
}
\value{
A \eqn{tp \times K}{t*p by K} dimensional (design) matrix.
}
\description{
This function generates time-adjacent increments from a cell counts matrix y.
}
\keyword{internal}
