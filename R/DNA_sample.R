#' DNA Sample
#'
#' @param amount_nucleotides the amount of nucleotides in a given DNA sequence
#'
#' @return The function output is a random DNA sequence consisting of the bases A, T, G and C. The amount of bases in the sequence is chosen by the user.
#' @export
#'
#' @examples
#' amount_nucleotides <- 10
#' DNA_sample(amount_nucleotides)
DNA_sample <- function(amount_nucleotides){
  DNA_nucleotides <- sample(c("A", "T", "G", "C"), size = amount_nucleotides, replace = TRUE)
  DNA_sequence <- paste0(DNA_nucleotides, collapse = "")
  return(DNA_sequence)
}
