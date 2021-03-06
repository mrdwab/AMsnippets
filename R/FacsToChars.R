#'Convert all \code{factor} columns to \code{character} columns in a
#'\code{data.frame}
#'
#'Sometimes, we forget to use the \code{stringsAsFactors} argument when using
#'\code{\link{read.table}} and related functions. By default, R converts
#'character columns to factors. Instead of re-reading the data, the
#'\code{\link{FacsToChars}} function will identify which columns are currently
#'factors, and convert them all to characters.
#'
#'
#'@param mydf The name of your \code{data.frame}
#'@param overwrite Logical. Should the current object be overwritten? Defaults
#'to \code{FALSE}
#'@author Ananda Mahto
#'@seealso \code{\link{read.table}}
#'@examples
#'
#'## Some example data
#'dat <- data.frame(title = c("title1", "title2", "title3"),
#'               author = c("author1", "author2", "author3"),
#'               customerID = c(1, 2, 1))
#'## Make a copy of dat for later
#'dat_copy <- dat
#'str(dat) # current structure
#'dat2 <- FacsToChars(dat)
#'str(dat2) # Your new object
#'str(dat)  # Original object is unaffected
#'
#'## You can also overwrite the existing object
#'str(dat_copy) # Before applying the function
#'FacsToChars(dat_copy, overwrite=TRUE)
#'str(dat_copy) # After applying the function
#'\dontshow{rm(dat, dat2, dat_copy)}
#'
FacsToChars <- function(mydf, overwrite = FALSE) {
  dfname <- deparse(substitute(mydf))
  mydf[sapply(mydf, is.factor)] <- 
    lapply(mydf[sapply(mydf, is.factor)], as.character)
  if (isTRUE(overwrite)) {
    assign(dfname, mydf, envir = .GlobalEnv)
  } 
  mydf
}

