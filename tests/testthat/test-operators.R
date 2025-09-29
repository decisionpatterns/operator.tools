library(testthat)
library(operator.tools)

test_that( 'opetators', {
context( 'Function: is.operator' )
for( op in operators() ) 
  expect_true(is.operator(as.name(op)))


context( 'Function: can.operator' )
for( op in operators() ) 
  expect_true(can.operator(op))



context('Function: as.operator')
for( op in operators() )
  expect_true(is.operator(as.operator(op)))

})
