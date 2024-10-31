
<!-- README.md is generated from README.Rmd. Please edit that file -->

# cendog

<!-- badges: start -->
<!-- badges: end -->

The goal of cendog is to …

## Installation

You can install the development version of cendog from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rforbiodatascience24/group_22_package")
```

``` r
library(cendog)
```

The cendog package replicates the central dogma of molecular biology. It
consists of 5 functions which is described below

#### Function 1: DNA_sample

This function generates a random DNA sequence of a specified length. The
sequence consists of the nucleotides A, T, G and C, which are the
building blocks of DNA. The function accepts the input from one
parameter, amount_nucleotides, which contains the desired length of the
DNA sequence. By using sample(), the function randomly selects
nucleotides and replacement equals true, so nucleotides can appear
multiple times. This generates a vector DNA_nucleotides of random DNA
bases. These nucleotides are then combined into a single string as all
elements are joined without spaces to form a continuous DNA sequence.

#### Function 2: DNA_to_RNA

This function, named DNA_to_RNA, is designed to convert a DNA sequence
(provided as the input DNA1) into an RNA sequence by replacing thymine
(T) with uracil (U). The output of the function, RNA1, is the RNA
sequence equivalent to the input DNA sequence, DNA1.

#### Function 3: make_codon

This function takes a nucleotide sequence (e.g. “ATGCGT”) and divides it
into codons, each consisting of three nucleotides. The function has a
start parameter, that defines the starting positions for reading the
codons. Hereafter, the function calculates the length of the nucleotide
sequence and saves the number as ‘num_nucleotides’. The function
generates codons by generating a sequence of starting positions for each
codon, starting at the ‘start’ position defined and moving three
characters ahead. The ending positions for each codon are three
characters after the corresponding starting position. The function
returns a vector containing the codons generated from the input
nucleotide sequence.

#### Function 4: codon_to_name

This function, named codon_to_name, is made to convert a sequence of
codons (provided as the input codons) into a single concatenated name by
retrieving the corresponding one letter amino acid code from a
predefined codon table. The output of the function, codon_names, is a
single string representing the one letter codes of the input codons.

#### Function 5: plot_amino_acid_counts

This function, named plot_amino_acid_counts, is designed to analyze a
sequence of amino acids and generate a bar plot showing the frequency of
each unique amino acid in the sequence. The input, sequence, is a
character string representing a series of amino acids. The function uses
the stringr package for splitting the sequence and counting amino acid
occurrences, and the ggplot2 package to create a bar plot. The two
dependencies have been added to the description of the function with
these 2 lines of code:

``` r
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
```

The output is a ggplot object, amino_acid_plot, which visually displays
the counts of each amino acid, providing an easy way to interpret the
composition of the sequence.
