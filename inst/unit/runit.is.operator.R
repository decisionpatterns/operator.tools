
test.is.operator <- function() {

  for( op in operators() ) 
    checkTrue( is.operator(eval(as.name(op) ) ), msg=paste( x, "is an operator") )


  # PERHAPS A BIT OBSESSIVE, CHECK ALL OTHER NAMES TO ENSURE THAT THEY ARE NOT 
  # OPERATORS.  
  all.names <- apropos( '.' )
  non.ops <- all.names[! all.names %in% operators()]

  # for( non.op in non.ops ) 
  #   checkTrue( ! is.operator(eval(as.name(non.op) ) ), msg=paste( x, "is not an operator") )

}


test.can.operator <- function() {

  for( op in operators() ) 
    checkTrue( can.operator(op), msg=paste( x, "can be coerced to an operatro" ) )

} 


test.as.operator <- function() {

  for( op in operators() )
    checkTrue( 
      is.operator(as.operator(op)),
      msg=paste( x, "succesfully coerced to an operator" ) 
    ) 

}


