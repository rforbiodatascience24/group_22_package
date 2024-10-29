#' Converting a DNA sequnce into a RNA sequence
#'
#' @param DNA1 The DNA sequnce that we would like to convert into RNA.
#'
#' @return The output of this function is that our DNA sequcne have been converted into a RNA sequence.
#' @export
#'
#' @examples
#' DNA1 <- "ATGCTATGA"
#' DNA_to_RNA(DNA1)
DNA_to_RNA <- function(DNA1){
  RNA1 <- gsub("T", "U", DNA1)
  return(RNA1)
}
