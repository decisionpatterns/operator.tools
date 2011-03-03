library(testthat)
context( "Function: inverse" )
  
# inverse names
  expect_equal( inverse( as.name('+') ), as.name('-') )
  expect_equal( inverse( as.name('-') ), as.name('+') )
  expect_equal( inverse( as.name('*') ), as.name('/') )
  expect_equal( inverse( as.name('/') ), as.name('*') )

  expect_equal( inverse( as.name('<') ), as.name('>=') )
  expect_equal( inverse( as.name('<=') ), as.name('>') )
  expect_equal( inverse( as.name('>') ), as.name('<=') )
  expect_equal( inverse( as.name('>=') ), as.name('<') )


# inverse functions 
  expect_equal( inverse(`+`), eval(`-`) )
  expect_equal( inverse(`-`), eval(`+`) )
  expect_equal( inverse(`*`), eval(`/`) )
  expect_equal( inverse(`/`), eval(`*`) )

  expect_equal( inverse(`<`), eval(`>=`) )
  expect_equal( inverse(`<=`), eval(`>`) )
  expect_equal( inverse(`>`), eval(`<=`) )
  expect_equal( inverse(`>=`), eval(`<`) )

  
