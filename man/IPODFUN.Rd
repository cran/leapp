\name{IPODFUN}
\alias{IPODFUN}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
compute the iterative penalized outlier detection given the noise standard deviation sigma
}
\description{
 Y = X beta + gamma + sigma epsilon
 estimate k by 1 coefficients vector beta and N by 1 outlier indicator vector gamma from (Y,X).     
}
\usage{
IPODFUN(X, Y, H, sigma, betaInit, method = "hard", TOL = 1e-04)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{an N by k design matrix }
  \item{Y}{an N by 1 response vector}
  \item{H}{an N by N projection matrix X(X'X)^{-1}X' }
  \item{sigma}{a numeric,  noise standard deviation}
  \item{betaInit}{a k by 1 initial value for coeffient beta}
  \item{method}{a string, if "hard", conduct hard thresholding, if "soft", conduct soft thresholding, default to "hard"}
  \item{TOL}{a numeric,  tolerance of convergence,  default to 1e-04}
}
\details{The initial estimator for the coefficient beta can be chosen to be the estimator from a robust linear regression}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
  \item{gamma }{an N by 1 vector of estimated outlier indicator}
  \item{ress}{an N by 1 vector of residual Y - X beta - gamma }
%% ...
}
\references{
She, Y. and Owen, A.B. "Outlier detection using nonconvex penalized regression" 2010
}

\author{Yunting Sun \email{yuntings@stanford.edu}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}


%% ~Make other sections like Warning with \section{Warning }{....} ~


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
