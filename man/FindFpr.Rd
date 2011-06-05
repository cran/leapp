\name{FindFpr}
\alias{FindFpr}
\title{Compute the false positive rate at given sizes of retrieved genes }
\description{
   Given a vector of sizes of retrieved genes, for each size k, select
   the top k genes with smallest p values and compute the false positive rate from
   the retrieved genes and the true positive genes.  
  
}
\usage{
 FindFpr(pvalue, ind,topk)
}
\arguments{
  \item{pvalue}{A vector of p values, one for each gene, with length m }
 \item{ind}{A vector of indices that the corresponding gene are true positive }
  \item{topk}{A vector of integers ranging from 1 to m ,  length of retrieved
    gene list}

}

\value{
  \item{fpr}{A vector of false positive rates at given sizes of retrieval.}
}



\author{Yunting Sun \email{yuntings@stanford.edu}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}




\keyword{misc}
