\name{subsequence}
\alias{subsequence}
\title{Identify sequences in a vector}
\usage{
  subsequence(data, groups = FALSE)
}
\arguments{
  \item{data}{The input vector}

  \item{groups}{Logical. Should the grouping vector be
  returned?}
}
\description{
  The \code{\link{subsequence}} function is like the
  inverse of \code{\link{rep}}, and is somewhat related to
  \code{\link{rle}}. It detects the sequence in a vector
  and returns the period of the sequence, the actual
  sequence, the number of times the sequence is repeated,
  and optionally, a "Groups" vector the same length as the
  input vector that can be used as a grouping variable.
}
\examples{
## Some sample data
s1a <- rep(c(1, 2, 3), 3)
s1b <- c(s1a, 1)
s2 <- rep(c(1, 2, 3), 50)
s3 <- c(1, 2, 3, 4, 2, 3, 4, 1, 2, 3, 4, 2, 3, 4)
set.seed(1)
s4 <- rep(sample(300, 15), 5)

subsequence(s1a)
## Note the creation of a grouping variable
subsequence(s1b, groups = TRUE)
subsequence(s2)
subsequence(s3)
subsequence(s4)
}
\author{
  Ananda Mahto
}
\references{
  This function was written as an answer to the following
  Stack Overflow question:
  \url{http://stackoverflow.com/q/12824931/1270695}
}
\seealso{
  \code{\link{rep}}, \code{\link{rle}},
}

