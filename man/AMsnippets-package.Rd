\docType{package}
\name{AMsnippets-package}
\alias{AMsnippets}
\alias{AMsnippets-package}
\title{An assortment of R snippets}
\description{
  The \emph{AMsnippets} package is a collection of
  utilities that make certain repetitious or annoying tasks
  less repetitious or less annoying. Some of the functions
  were written as answers to questions at Stack Overflow;
  in such cases, a link to the original question has been
  provided.
}
\details{
  \tabular{ll}{ Package: \tab AMsnippets\cr Type: \tab
  Package\cr Version: \tab 1.0\cr Date: \tab 2013-02-08\cr
  License: \tab GPL-2\cr }
}
\examples{
## aggregate2
aggregate2(ToothGrowth, "len", ".", c("sum", "mean"))

## CBIND
df1 <- data.frame(A = 1:5, B = letters[1:5])
df2 <- data.frame(C = 1:3, D = letters[1:3])
df3 <- data.frame(E = 1:8, F = letters[1:8], G = LETTERS[1:8])
#'CBIND(list(df1, df2, df3))

## FacsToChars
dat <- data.frame(title = c("title1", "title2", "title3"),
              author = c("author1", "author2", "author3"),
              customerID = c(1, 2, 1))
str(dat)
FacsToChars(dat, overwrite = TRUE)
str(dat)

## makemeNA
# Some sample data
temp <- data.frame(
V1 = c(1:3),
V2 = c(1, "*", 3),
V3 = c("a", "*", "c"),
V4 = c(".", "*", "3"))
temp
makemeNA(temp, c("*", "."))

\dontshow{rm(dat, df1, df2, df3, temp)}
}
\author{
  Ananda Mahto, with functions by Rolf Turner, Akhil S
  Bhel, Anonymous

  Maintainer: Ananda Mahto <mrdwab@gmail.com>
}

