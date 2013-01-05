\name{leapp-package}
\alias{leapp-package}
\docType{package}
\title{
latent effect adjustment after primary projection
}
\description{
These functions take a gene expression value matrix, a primary covariate vector, an additional known covariates matrix.  A two stage analysis is applied to counter the effects of latent variables on the rankings of hypotheses.  The estimation and adjustment of latent effects are proposed by Sun, Zhang and Owen (2011).   "leapp" is developed in the context of microarray experiments, but may be used as a general tool for high throughput data sets where dependence may be involved.
}
\details{
\tabular{ll}{
Package: \tab leapp\cr
Type: \tab Package\cr
Version: \tab 1.1\cr
Date: \tab 2013-01-05\cr
License: \tab What license is it under?\cr
LazyLoad: \tab yes\cr
}
}
\author{

Maintainer: Yunting Sun <yunting.sun@gmail.com>

}

\keyword{ package }
\seealso{
Sun, Zhang and Owen (2011), "Multiple hypothesis testing, adjusting for latent
variables"
}
\examples{
 \dontrun{
   library(sva)
   library(MASS)
   library(leapp)
   data(simdat)
   model <- cbind(rep(1,60),simdat$g)
   model0 <- cbind(rep(1,60))
   p.raw <- f.pvalue(simdat$data,model,model0)
   p.oracle <-f.pvalue(simdat$data - simdat$u%*%t(simdat$v), model, model0)
    
   p.leapp <- leapp(simdat$data,pred.prim = simdat$g)$p
   p = cbind(p.raw,p.oracle, p.leapp)
   topk = seq(0,0.5,length.out = 50)*1000
   null.set = which(simdat$gamma !=0)
   fpr= apply(p,2,FindFpr,null.set,topk)
   tpr= apply(p,2,FindTpr,null.set,topk)
   ROCplot(fpr,tpr, main = "ROC Comparison", 
           name.method = c("raw","oracle","leapp"), save = FALSE )
 }
}
