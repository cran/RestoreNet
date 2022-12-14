% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{VEuy}
\alias{VEuy}
\title{\eqn{E[u \vert y]}{E[u|y]} and \eqn{V[u \vert y]}{V[u|y]}}
\usage{
VEuy(theta_curr, M, M_bdiag, y, V, VCNs, nObs)
}
\arguments{
\item{theta_curr}{current p-dimensional vector parameter.}

\item{M}{A \eqn{n \times K}{n by K} dimensional (design) matrix.}

\item{M_bdiag}{A\eqn{n \times Jp}{n by J*p} dimensional block-diagonal design matrix.
Each j-th block (\eqn{j = 1,\dots,J}{j = 1,..,J}) is a \eqn{n_j \times p}{n_j by p} dimensional design matrix for the j-th clone.}

\item{y}{n-dimensional vector of the time-adjacent cellular increments}

\item{V}{A \eqn{p \times K}{p by K} dimensional net-effect matrix.}

\item{VCNs}{A n-dimensional vector including values of the vector copy number corresponding to the cell counts of y.}

\item{nObs}{A K-dimensional vector including the frequencies of each clone k (\eqn{k = 1,\dots,K}{k = 1,..,K}).}
}
\value{
the conditional expectation \eqn{E[u \vert y]}{E[u|y]} and variance \eqn{V[u \vert y]}{V[u|y]} of the latent states u given the observed states y.
}
\description{
Conditional expectation \eqn{E[u \vert y]}{E[u|y]} and variance \eqn{V[u \vert y]}{V[u|y]} of the latent states u given the observed states y
}
\keyword{internal}
