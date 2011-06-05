\name{leapp}
\alias{leapp}
\title{latent effect adjustment after primary projection}
\description{
  Adjust for latent factors and conduct multiple hypotheses testing from
  gene expression data using the algorithm of Sun,Zhang and Owen (2011).
  Number of latent factors can be chosen by Buja and Eyuboglu (1992).
}
\usage{
leapp (data,pred.prim,pred.covar,
         O = NULL, num.fac = "buja", method = "hard", sparse = TRUE,
         centered = FALSE, verbose = FALSE, perm.num = 50, 
         TOL = 1e-4, length.out = 50)
}
\arguments{
  \item{data}{An N genes by n arrays matrix of expression data}
 \item{pred.prim}{An n by 1 primary predictor}
  \item{pred.covar}{An n by s known covariate matrix not of primary
interest}
 \item{O}{An n by n rotation matrix such that O  pred.prim = (1, 0,...,0)}
 \item{num.fac}{A numeric or string,  number of latent factors chosen.  it has default value "buja" which uses Buja and Eyuboglu (1992) to pick the number of factors}
 \item{method}{A string which takes values in ("hard","soft").  "hard":  hard thresholding in the IPOD algorithm; "soft": soft thresholding in the IPOD algorithm}
 \item{sparse}{A logical value,  if \code{TRUE}, the signal is sparse and the proportion of non-null genes is small, use IPOD algorithm in Owen and She (2010) to enforce sparsity.  If \code{FALSE}, the signal is not sparse, use ridge type penalty to carry out the inference as in Sun,Zhang, Owen (2011). Default to \code{TRUE}}   
 \item{centered}{A logical value,  indicates whether the data has been centered at zero, default to \code{FALSE}}
 \item{verbose}{A logical value, if \code{TRUE}, will print much information as algorithm proceeds, default to \code{FALSE}}
 \item{perm.num}{A numeric, number of permutation performed using algorithm of Buja and Eyuboglu (1992), default to 50}
 \item{TOL}{A numeric,  convergence tolerance level, default to 1e-4}
 \item{length.out}{A numeric, number of candidate tuning parameter lambda under consideration for further modified BIC model selection,  default to 50. }
}
\details{
  The data for test i should be in the ith row of data. If the rotation matrix O is set to NULL, the function will compute one rotation from primary predictor pred.prim.
}

\value{
  \item{p}{A vector of p-values one for each row of data.}
  \item{vest}{An n by num.fac matrix, estimated latent factors}
  \item{uest}{An N by num.fac matrix, estimated latent loadings}
  \item{gamma}{An N by 1 vector, estimated primary effect}
  \item{sigma}{An N by 1 vector, estimated noise standard deviation one for each row of data}
}


\author{Yunting Sun \email{yuntings@stanford.edu}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

\examples{
  \dontrun{
  ## Load data
  data(simdat)
  
  
    
  #Calculate the p-values
  p <- leapp(simdat$data,pred.prim = simdat$g,method = "hard")$p
  auc <- FindAUC(p, which(simdat$gamma!=0))
  
  
 }
}
\keyword{misc}
