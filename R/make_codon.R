#' Converting nucleotides into codons
#'
#' @param nucleotides All nucleotides
#' @param start The first nucleotide
#'
#' @return Nucleotides divided into codons
#' @export
#'
#' @examples
#' nucleotides <- "AUGCUU"
#' make_codon(nucleotides)
make_codon <- function(nucleotides, start = 1){
  num_nucleotides <- nchar(nucleotides)
  codons <- substring(nucleotides,
                      first = seq(from = start, to = num_nucleotides-3+1, by = 3),
                      last = seq(from = 3+start-1, to = num_nucleotides, by = 3))
  return(codons)
}
