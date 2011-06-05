\name{FindAUC}
\alias{FindAUC}
\title{Compute the area under the ROC curve (AUC) }
\description{
   Given a vector of p values for m genes and a set of null genes,  compute the area under ROC curve using the Wilcoxin statistics  
  
}
\usage{
 FindAUC(pvalue, ind)
}
\arguments{
  \item{pvalue}{A vector of p values, one for each gene, with length m }
 \item{ind}{A vector of indices that the corresponding gene are true positive }


}

\value{
  \item{auc}{A numeric, area under the ROC curve for the given gene list}
}



\author{Yunting Sun \email{yuntings@stanford.edu}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}



\keyword{misc}
