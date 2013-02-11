# subSequence
print.subSequence <- function (x, digits = getOption("digits"), prefix = "", ...) 
{
  if (is.null(digits)) 
    digits <- getOption("digits")
  cat("", "Subsequences\n", "  Period      : ", sep = prefix)
  utils::str(x$Period, give.head = FALSE)
  cat("", "  Sequence    : ", sep = prefix)
  utils::str(x$Sequence, digits.d = digits,
             vec.len = length(x$Sequence), 
             width = 60, strict.width = "wrap",
             give.head = FALSE)
  cat("", "  Repetitions : ", sep = prefix)
  utils::str(x$Repetitions, digits.d = digits, give.head = FALSE)
  if (!is.null(x$Groups)) {
    cat("", "  Groups      : ", sep = prefix)
    utils::str(x$Groups, digits.d = digits,
               vec.len = length(x$Groups), 
               width = 60, strict.width = "wrap", 
               give.head = FALSE)
  }
  invisible(x)
}

# SampleToSum
print.sampletosum <- function(x, prefix = "", ...) {
  cat("", "SampleToSum\n", "  Target     : ", sep = prefix)
  utils::str(x$Target, give.head = FALSE)
  cat("", "  Total      : ", sep = prefix)
  utils::str(x$Total, give.head = FALSE)
  cat("", "  Iterations : ", sep = prefix)
  utils::str(x$Iterations, give.head = FALSE)
  cat("\n", "  Result     : ", sep = prefix)
  utils::str(x$Result, vec.len = length(x$Result), 
             width = 60, strict.width = "wrap", 
             give.head = FALSE)
  invisible(x)
}