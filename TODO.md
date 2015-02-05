 - Resolve name convention. Is it inverse, invert, complement? 
   How does this work with formula.tools and venn?

 - There is some confusion about the SPECIAL CLASS of operators, ie. 
   registered, unregistered, etc., and it's type, i.e. logical arithmetic
   ...
   we should factor this out and call it: domain 

 - Relational operators are also logical.
   operators might have more than one type and have an inheritance behavior

 - Create 'function.tools' package    
   - extend as.name, as.function, as.character, as.operator, etc.
     to replace fun2name, name2fun, etc.
   - create options('functions') to contain metadata for functions

 - THEN: 
   - create 'operator.tools::operators' classes that extends function

 - refactor so functions can work on collection objects/lists

 - extend so that %in% works for class name
         > as.character( op(x) ) %in% c( '==', '%in%' )
         [1] TRUE
         > x
         Species %in% c("setosa", "versicolor", "virginica")
         > as.character( op(x) ) %in% c( '==', '%in%' )
         [1] TRUE
         > op(x)  %in% c( '==', '%in%' )
         Error in match(x, table, nomatch = 0L) : 
           'match' requires vector arguments
           > class(op(x))
           [1] "name"


 - There seems to be some friction with rel.type function and expressions
   this could work better.

 ? Can operators have multiple types?  This might happen with overloading
   since operators are special functions with two or more arguments.

 ? setInverse for adding to altering .Options$operators.inverse


# ------------------------------------------------------
# COMPLETED:
# ------------------------------------------------------
x fun2name: given the function, it identifies the .name
   function (e1, e2)  .Primitive(">=") >===>  >=
   

