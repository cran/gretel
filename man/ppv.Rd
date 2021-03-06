% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ppv.R
\name{ppv}
\alias{ppv}
\title{Calculate probabilistic path value}
\usage{
ppv(sociomatrix, path, odds_scale = 1, odds_scale_by_node = NULL)
}
\arguments{
\item{sociomatrix}{a nonnegative, real valued sociomatrix.}

\item{path}{an integer vector of node indices from \code{sociomatrix}.}

\item{odds_scale}{a nonnegative real number indicating the observed tie
strength value that corresponds to 1-1 transmission odds}

\item{odds_scale_by_node}{sets a transfer odds scale for each node in a 
probabilistic path value calculation.}
}
\description{
Given a real valued sociomatrix, a path, and an optional \code{odds_scale}, \code{ppv}
calculates the transmission odds for the path and returns the transmission odds
times \code{odds_scale} so the result can be directly compared with observed 
tie strenghts.
}
\details{
We assume that observed tie strengths in \code{sociomatrix} are linearly
proportional to transmission odds. That is, if the transmission odds for
a strength 1 tie are 1 to 1, the transmission odds for a strength 5 tie are
1 to 5.
}
\examples{
## Calculate ppv along a path in a sociomatrix
ppv(YangKnoke01, path = c(1,2,5), odds_scale = 3)

## This path doesn't exist
gpv(YangKnoke01, path = c(1,2,4,5))

}
\seealso{
\code{\link{opt_ppv}} to identify the path of optimal 'ppv' between two nodes 
    and \code{\link{all_opt_ppv}} to identify the optimal paths between all pairs of 
    nodes. Calling \code{\link{generate_proximities}} with \code{mode = 'ppv'} 
    returns a matrix 'ppv' values for the optimal paths between all pairs of 
    nodes.
}
