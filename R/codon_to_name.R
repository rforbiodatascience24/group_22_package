#' Codon to name
#'
#' @param codons A character vector of codon codes (e.g., "AUG", "UUU") to be translated
#'
#' @return A single character string with the concatenated one letter codes for the codons
#' @export
#'
#' @examples codon_to_name(c("AUG", "UUU", "UUA"))
codon_to_name <- function(codons){
  codon_names <- paste0(codon_table[codons], collapse = "")
  return(codon_names)
}
