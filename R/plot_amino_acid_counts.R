#' Plot Amino Acid Counts in a Sequence
#'
#' @param sequence A character string representing a sequence of amino acids
#'
#' @return A ggplot object displaying a bar plot of amino acid counts
#' @export
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @examples
#' sequence <- "AAGTCCGAA"
#' plot_amino_acid_counts(sequence)
plot_amino_acid_counts <- function(sequence) {
  unique_amino_acids <- sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_amino_acids, function(amino_acid) stringr::str_count(string = sequence, pattern = amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_Acid"]] <- rownames(counts)

  amino_acid_plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_Acid, y = Counts, fill = Amino_Acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(amino_acid_plot)
}
