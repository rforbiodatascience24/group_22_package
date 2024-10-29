library("testthat")

test_that("make_codon works", {
  expect_equal(
    make_codon("ATGCGTAAATGA"),
    c("ATG", "CGT", "AAA", "TGA")
  )
})



