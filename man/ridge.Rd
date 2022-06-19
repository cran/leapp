\name{ridge}
\alias{ridge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Outlier detection with a ridge penalty 
}
\description{
Outlier detection and robust regression with a ridge type penalty on the outlier indicator gamma.  Allow non sparse outliers and require known noise standard deviation.  
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
ridge(X, Y, H, sigma)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{X}{
an N by k design matrix
%%     ~~Describe \code{X} here~~
}
  \item{Y}{ an N by 1 response vector
%%     ~~Describe \code{Y} here~~
}
  \item{H}{ an N by N projection matrix \code{X(X'X)^{-1}X'}
%%     ~~Describe \code{H} here~~
}
  \item{sigma}{a numeric, noise standard deviation
%%     ~~Describe \code{sigma} here~~
}
}

\value{
\item{p}{an N by 1 vector of p-values for each of the N genes}
\item{gamma}{an N by 1 vector of estimated primary variable gamma}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\author{Yunting Sun \email{yunting.sun@gmail.com}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{misc}
