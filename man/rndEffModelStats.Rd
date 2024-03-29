% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{rndEffModelStats}
\alias{rndEffModelStats}
\title{Base and random-effects model statistics}
\usage{
rndEffModelStats(
  theta_null,
  theta_rndEff,
  V,
  M,
  M_bdiag,
  y,
  VCNs,
  nObs,
  verbose = TRUE
)
}
\arguments{
\item{theta_null}{the estimated p-dimensional vector parameter for the base (null) model.}

\item{theta_rndEff}{the estimated p-dimensional vector parameter for the random-effects model.}

\item{M}{A \eqn{n \times K}{n by K} dimensional (design) matrix.}

\item{M_bdiag}{A\eqn{n \times Jp}{n by J*p} dimensional block-diagonal design matrix.
Each j-th block (\eqn{j = 1,\dots,J}{j = 1,..,J}) is a \eqn{n_j \times p}{n_j by p} dimensional design matrix for the j-th clone.}

\item{y}{n-dimensional vector of the time-adjacent cellular increments}

\item{VCNs}{A n-dimensional vector including values of the vector copy number corresponding to the cell counts of y.}

\item{nObs}{A K-dimensional vector including the frequencies of each clone k (\eqn{k = 1,\dots,K}{k = 1,..,K}).}

\item{verbose}{(defaults to TRUE) Logical value. If TRUE, then information messages on the progress of the
algorithm are printed to the console.}
}
\value{
A vector of statistics associated to the fitted base and random-effects models:
\tabular{ll}{
\code{nPar} \tab number of parameters of the base(null) model \cr
\tab \cr
\code{cll} \tab value of the conditional log-likelihood, in this case just the log-likelihood \cr
\tab \cr
\code{mll} \tab value of the marginal log-likelihood, in this case just the log-likelihood \cr
\tab \cr
\code{cAIC} \tab conditional Akaike Information Criterion (cAIC), in this case simply the AIC. \cr
\tab \cr
\code{mAIC} \tab marginal Akaike Information Criterion (mAIC), in this case simply the AIC. \cr
\tab \cr
\code{Chi2} \tab value of the \eqn{\chi^2}{Chi-squared} statistic \eqn{(y - M\theta)'S^{-1}(y - M\theta)}{(y - Mθ)'S^-1(y - Mθ)}. \cr
\tab \cr
\code{p-value} \tab p-value of the \eqn{\chi^2}{Chi-squared} test for the null hypothesis that Chi2 follows a \eqn{\chi^2}{Chi-squared} distribution with n - nPar degrees of freedom. \cr
\tab \cr
\code{KLdiv} \tab Kullback-Leibler divergence of the random-effects model from the null model. \cr
\tab \cr
\code{KLdiv/N} \tab Rescaled Kullback-Leibler divergence of the random-effects model from the null model. \cr
\tab \cr
\code{BhattDist_nullCond} \tab Bhattacharyya distance between the random-effects model and the null model. \cr
\tab \cr
\code{BhattDist_nullCond/N} \tab Rescaled Bhattacharyya distance between the random-effects model and the null model. \cr
}
}
\description{
Main statistics from the fitted base and random-effects models
}
\keyword{internal}
