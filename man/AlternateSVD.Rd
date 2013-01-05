\name{AlternateSVD}
\alias{AlternateSVD}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Alternating singular value decomposition
}
\description{
The algorithm alternates between 1) computing latent loadings u and latent variable v and 2) estimating noise standard deviation for each of the N genes.  
}
\usage{
AlternateSVD(x, r, pred = NULL, max.iter = 10, TOL = 1e-04)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~ \code{x} here~~
  an N by n data matrix 
}
  \item{r}{
%%     ~~Describe \code{r} here~~
  a numeric, number of latent factors to estimate
}
  \item{pred}{
%%     ~~Describe \code{pred} here~~
  an n by s matrix,  each column is a vector of known covariates for n samples, s covariates are considered, default to \code{NULL}  
}
  \item{max.iter}{
%%     ~~Describe \code{max.iter} here~~
  a numeric, maximum number of iteration allowed, default to 10
}
  \item{TOL}{
%%     ~~Describe \code{TOL} here~~
  a numeric, tolerance level for the algorithm to converge, default to 1e-04
}
}

\value{
%%  ~Describe the value returned
\item{sigma}{a vector of length N,  noise standard deviations for N genes}
\item{coef}{an N by s matrix, estimated coefficients for known covariates}
\item{uest}{an N by r matrix, estimated latent loadings}
\item{vest}{an n by r matrix, estiamted latent factors}
}

\author{Yunting Sun \email{yunting.sun@gmail.com}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
