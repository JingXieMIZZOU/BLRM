% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LogPPs.R
\name{PPsFUN}
\alias{PPsFUN}
\title{Posterior Probability Computation}
\usage{
PPsFUN(par, index, data, rep)
}
\arguments{
\item{par}{hyperparameters estimates returned by \code{par.est} function.}

\item{index}{index of a specific gene, i.e., the gene number in raw data.}

\item{data}{The raw data, need to be in the exact format with the sample data provided by this package, more specifically, a \code{data.frame} with its first 3 variables indicating gene ID, gene number and SNP number within a specific gene respectively. The following 2*Rep (Rep is the number of biological replicates) columns in the \code{data.frame} contain count data and the order must be consistent with the sample data. More details would be found in \code{help(mysample)}.}

\item{rep}{The number of biological replicates at each SNP.}
}
\value{
A 1x5 \code{matrix} contains the gene number of a specific gene and the logarithms of posterior probabilities of the 4 models for this gene.
}
\description{
A function to compute the posterior probabilities of 4 models which correspond to four different situations of gene expression, i.e., model 1 represents no ASE and no SNP variation; model 2 represents ASE without SNP variation; model 3 represents no ASE but significant SNP variation; model 4 represents ASE with significant SNP variation.
}
