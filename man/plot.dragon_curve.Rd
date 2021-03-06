% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dragon_curve.R
\name{plot.dragon_curve}
\alias{plot.dragon_curve}
\title{Plot Dragon Curves}
\usage{
\method{plot}{dragon_curve}(x, ...)
}
\arguments{
\item{x}{A matrix of class "dragon_curve" as returned from \code{\link[=dragon_curve]{dragon_curve()}}
with columns x and y.}

\item{...}{Other parameters passed to \code{\link[graphics:lines]{lines()}},
e.g. \code{col} or \code{lwd}.}
}
\value{
None
}
\description{
Plot dragon curves as lines.
}
\examples{
plot(dragon_curve(9))

}
