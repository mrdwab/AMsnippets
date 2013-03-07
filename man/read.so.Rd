\name{read.so}
\alias{read.so}
\title{%% ~~function to do ... ~~}
\usage{
  read.so(sep = "", header = TRUE)
}
\arguments{
  \item{sep}{%% ~~Describe \code{sep} here~~}

  \item{header}{%% ~~Describe \code{header} here~~}
}
\value{
  %% ~Describe the value returned %% If it is a LIST, use
  %% \item{comp1 }{Description of 'comp1'} %% \item{comp2
  }{Description of 'comp2'} %% ...
}
\description{
  %% ~~ A concise (1-5 lines) description of what the
  function does. ~~
}
\details{
  %% ~~ If necessary, more details than the description
  above ~~
}
\note{
  %% ~~further notes~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (sep = "", header = TRUE)
{
   suppressWarnings(read.table(text = gsub("^#|^##", "", readLines("clipboard")),
       header = header, stringsAsFactors = FALSE, sep = sep))
 }
}
\author{
  %% ~~who you are~~
}
\references{
  %% ~put references to the literature/web site here ~
}
\seealso{
  %% ~~objects to See Also as \code{\link{help}}, ~~~
}
\keyword{~kwd1}
\keyword{~kwd2}

