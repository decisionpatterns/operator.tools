removeOperator <- function(x) {

    x <- as.character(x) 
    ops <- .Options$operators 
    
    if( x %in% names(ops) ) {
      ops[[x]] <- NULL 
      options( operators = ops )
    } else {
      warning( x, " is not a REGISTERED operator.  See ?setOperator." ) 
    }

}
