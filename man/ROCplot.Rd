\name{ROCplot}
\alias{ROCplot}
\title{plot ROC curve }
\description{
   Input an p by d matrix, each column of which contains false positive rates(FPR) computed from each of the d methods and p significance levels and a matrix of corresponding true positive rates(TPR) at the same significance levels.   Plot ROC curve for each of the d methods.  
}
\usage{
 ROCplot(fpr,tpr,main, name.method, 
         xlim = c(0,0.2),ylim = c(0.4,1), save = TRUE, name.file = NULL)
}
\arguments{
  \item{fpr}{A matrix of false positive rates for increasing sizes of retrieved significant genes }
 \item{tpr}{A vector of corresponding true positive rates at the same significance levels  }
 \item{main}{a string, title of the figure}
 \item{name.method}{a string vector of length d containing names of the d methods}
 \item{xlim}{the range of the x axis(FPR), default to c(0,0.2)}
 \item{ylim}{the range of the y axis (TPR), default to c(0.4,1)}
 \item{save}{a logical value, if \code{TRUE}, will save the plot to an png file, default to \code{TRUE}}
 \item{name.file}{a string giving the name of the png file to save the plot}
}
\details{
  The order of the name.method should be the same as that in the fpr and tpr.  
  
}




\author{Yunting Sun \email{yuntings@stanford.edu}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

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
    
   p.leapp <- leapp(simdat$data,pred.prim = simdat$g, method = "hard")$p
   p = cbind(p.raw,p.oracle, p.leapp)
   topk = seq(0,0.5,length.out = 50)*1000
   null.set = which(simdat$gamma !=0)
   fpr= apply(p,2,FindFpr,null.set,topk)
   tpr= apply(p,2,FindTpr,null.set,topk)
   ROCplot(fpr,tpr, main = "ROC Comparison",
           name.method = c("raw","oracle","leapp"), save = FALSE )
 }
}
\keyword{misc}
