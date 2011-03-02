# ---------------------------------------------------------------------
# Function: setOperator
#  Treats ops as CORE type R operators
#  
#  TODO:
# ---------------------------------------------------------------------
setOperator <- function( name, type="user", ... ) {

  if(
    type %in% 
    c( 'ALL', 'SPECIAL', 'REGISTERED', 'REG', 'UNREGISTERED', 'UNREG' ) 
  )
    stop( type, "  is a reserved operator type." )

  opts <- if( ! is.null(.Options$operators) ) .Options$operators else  list()

  # WARN IF NEW TYPE SET.
  # if( length(opts) > 1 ) {
  #  types <- sapply( opts, function(x) x[['type']] ) 
  #  if( ! type %in% types ) warning( "Adding a new operator type: ", type ) 
  # }

  # opts[[name]] <- list( name=name, type=type, fun=eval(as.name(name)) ) 
  opts[[name]] <- list( name=name, type=type ) 
  # opts[[name]][["type"]] <- type

  li <- list(...) 
  for( nm in names(li) ) opts[[name]][[nm]] <- li[[nm]] 

  invisible( base::options( operators = opts ) )
  
}

