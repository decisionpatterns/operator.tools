
library(testthat) 
context("Initialization Tests")


expect_true( exists('.Options') )
expect_true( "operators" %in% names( .Options ) )
expect_true(  length(operators()) > 0 %in% names( .Options ) )

