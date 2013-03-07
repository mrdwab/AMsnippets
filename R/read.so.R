#'Read displayed text at Stack Overflow
#'
#'For many questions at Stack Overflow, the question asker does not properly share their question (for example, using \code{\link{dput}} or by sharing some commands to make up the data). Most of the time, you can just copy and paste the text into R using \code{read.table(text = "clipboard", header = TRUE, stringsAsFactors = FALSE)}. This function is basically a convenience function for the above.
#'
#'@param sep Most of the time, the code shared is space separated (which is the default for this function). If the separator is any other character, it can be specified here.
#'@param header Are headers included?
#'
#'@author Ananda Mahto
#'@seealso \code{\link{dput}}, \code{\link{read.table}}
#'@examples
#'
#'\dontrun{
#'## Copy the following text (select and ctrl-c)
#'
#'# A B
#'# 1 2
#'# 3 4
#'# 5 6
#'
#'## Now, just type:
#'
#'read.so()
#'}
#'
read.so <- function(sep = "", header = TRUE) {
  suppressWarnings(
    read.table(text = gsub("^#|^##", "", readLines("clipboard")),
               header = header, stringsAsFactors = FALSE,
               sep = sep))
}
