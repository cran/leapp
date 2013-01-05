\name{Pvalue}
\alias{Pvalue}
\title{Calculate statistics and p-values}
\description{
  Calculate F-statistics, t-statistics and corresponding p-values given
  multiple regression models under the null and alternative hypotheses.  
}
\usage{
  Pvalue(dat, mod, mod0)
}
\arguments{
  \item{dat}{An N genes by n arrays matrix of expression data}
 \item{mod}{An n by (s+1)  design matrix  under the full model
   (alternative), the first column is the primary predictor, s>=0 and
   the rest of the columns are additional covariates }
  \item{mod0}{An n by s design  matrix under the null hypothesis, s>=0,
    should be the same as the 2:(s+1) columns of mod.  If s=0, please set mod0 = \code{NULL} }
}


\value{
  \item{p}{An N by 1 vector of p-values one for each row of data.}
  \item{tstat}{An N by 1 vector of t-statistics for primary parameters. }
  \item{fstat}{An N by 1 vector of F-statistics for primary parameters.}
  \item{coef}{An N by (s+1) matrix of coefficients with respect to
    design matrix mod under the full model. }
}


\author{Yunting Sun \email{yunting.sun@gmail.com}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

\examples{
  \dontrun{
      data(simdat)
      n = ncol(simdat$data)
      mod = cbind(simdat$g, rep(1,n))
      mod0 = cbind(rep(1,n))
      result = Pvalue(dimdat$data,mod = mod, mod0 = mod0)
  }
  
}
\keyword{misc}
