\name{FindPrec}
\alias{FindPrec}
\title{compute the precision at given sizes of retrieved genes }
\description{
   Given a vector of sizes of retrieved genes, for each size k, select
   the top k genes with smallest p values and compute the precision from
   the retrieved genes and the true positive genes.  
  
}
\usage{
 FindPrec(pvalue, ind,topk)
}
\arguments{
  \item{pvalue}{A vector of p values, one for each gene, with length m }
 \item{ind}{A vector of indices that the corresponding gene are true positive }
  \item{topk}{A vector of integers ranging from 1 to m ,  length of retrieved
    gene list}

}

\value{
  \item{prec}{A vector of precisions at given sizes of retrieval.}
}



\author{Yunting Sun \email{yunting.sun@gmail.com}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

\keyword{misc}
