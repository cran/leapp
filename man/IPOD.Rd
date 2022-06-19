\name{IPOD}
\alias{IPOD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Iterative penalized outlier detection algorithm   
}
\description{ Outlier detection and robust regression through an iterative penalized regression 
with tuning parameter chosen by  modified BIC}
\usage{
IPOD(X, Y, H, method = "hard", TOL = 1e-04, length.out = 50)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
%%     ~~Describe \code{X} here~~
an N by k design matrix  
}
  \item{Y}{
%%     ~~Describe \code{Y} here~~
an N by 1 response
}

  \item{H}{
an N by N projection matrix \code{X(X'X)^{-1}X'}
%%     ~~Describe \code{H} here~~
}
  \item{method}{
a string, if method = "hard", hard thresholding is applied; if method = "soft", soft thresholding is applied
%%     ~~Describe \code{method} here~~
}
  \item{TOL}{
relative iterative converence tolerance, default to 1e-04

%%     ~~Describe \code{TOL} here~~
}
\item{length.out}{A numeric, number of candidate tuning parameter lambda under consideration for further modified BIC model selection,  default to 50. }
}
\details{
If there is no predictors,  set \code{X = NULL}. 

Y = X beta + gamma + sigma epsilon

Y is N by 1 reponse vector, X is N by k design matrix, beta is k by 1 coefficients, gamma is N by 1 outlier indicator, sigma is a scalar and the noise standard deviation and epsilon is N by 1 vector with components independently distributed as standard normal N(0,1).   
%%  ~~ If necessary, more details than the description above ~~
}
\value{
\item{gamma}{a vector of length N, estimated outlier indicator gamma}
\item{resOpt.scale}{a vector of length N, test statistics for each of the N genes}
\item{p}{a vector of length N, p-values for each of the N genes}

%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\author{Yunting Sun \email{yunting.sun@gmail.com}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ipod}
