

test.operators <- function() {

   checkTrue( exists( '.Options' ) , msg=".Options exists" )
   checkTrue( 
     "operators" %in% names( .Options ), 
     msg=".Options has an 'operators' item"
   )
   checkTrue( length( operators() ) > 0, msg="operators() has non-zero length" )

}
