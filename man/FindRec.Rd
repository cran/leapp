\name{FindRec}
\alias{FindRec}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
compute the recall at given sizes of retrieved genes
}
\description{
Given a vector of sizes of retrieved genes, for each size k, select
the top k genes with smallest p values and compute the recall from
the retrieved genes and the true positive genes.  
}
\usage{
FindRec(pvalue, ind, topk)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{pvalue}{A vector of p values, one for each gene, with length m }
 \item{ind}{A vector of indices that the corresponding gene are true positive }
  \item{topk}{A vector of integers ranging from 1 to m ,  length of retrieved
    gene list}

}

\value{
\item{rec}{A vector of precisions at given sizes of retrieval.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}

\author{Yunting Sun \email{yuntings@stanford.edu}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
