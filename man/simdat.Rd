\name{simdat}
 \docType{data}
 \alias{simdat}
 \title{Simulated gene expression data affected by a group variable and an unobserved factor}
 \description{
   This data set is a simulated gene expression matrix with N(0,1)
   background noise and affected by two variables.  gene expression values of 1000 genes from 60 samples are simulated.  First 30 samples are from case group and last 30 samples are from control group.  The primary treatment variable g affects ten percent of the genes and the latent variable affects uniformly on the genes.  The correlation between primary treatment variable g and the latent variable is 0.5 and the SNR = 1, SLR = 0.5. The variances of noise across genes are distributed as inverse gamma. Also included in the data are a vector of normalized primary variable g, a vector of primary parameter gamma,a vector of latent factor v, a vector of latent loadings u and a vector of noise standard deviation for all genes sigma.  
 }
\usage{data(simdat)}
\format{A list of 6 components}
 \value{
 \item{data}{A 1000 x 60 gene expression value matrix with genes in rows and arrays in columns}
 \item{g}{A vector of length 60, primary variable }
 \item{gamma}{A vector of length 1000, primary parameter }
 \item{v}{A vector of length 60, latent variable}
 \item{u}{A vector of length 1000, latent loadings }
 \item{sigma}{A vector of length 1000, noise standard deviation for each of the 1000 genes}
}

\author{Yunting Sun \email{yunting.sun@gmail.com}, Nancy R.Zhang \email{nzhang@stanford.edu}, Art B.Owen \email{owen@stanford.edu}}

\keyword{datasets}
