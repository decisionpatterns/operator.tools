

#' Convert between a function and its name and vice versa.
#' 
#' \code{fun2name} compares a function (body) to all defined functions. If an
#' identical match is found to a defined function, that function is returned.
#' NB. This does not search through S4 methods.
#' 
#' \code{name2fun} simply converts its argument to a name and than evals it to
#' produce a function definition
#' 
#' \code{fun2name} compares the function against existing functions using
#' \code{\link{identical}}. If a match is found, the name of the matching
#' function ( expressed as a \code{character} ) is returned.
#' 
#' \code{fun2name} will not work for S4 Methods.
#' 
#' @aliases fun2name name2fun
#' @param f A function.
#' @param x An object to be converted into a name and eval'd
#' @return \code{character}.  A name of the function.
#' @author Christopher Brown
#' @seealso \code{\link{identical}}.
#' 
#' For the S4 methods, see \code{\link[methods]{setMethod}}
#' @keywords utilities
#' @examples
#' 
#' 
#'   # fun2name( ls ) 
#' 
#' 
NULL





#' Logical Operator: NOT IN
#' 
#' A "NOT IN" operator that is cognitively simpler than the more verbose \code{
#' ! x %in% table }
#' 
#' Implemented as: \code{function(x,y) ! x %in% y}
#' 
#' @aliases %!in%
#' @param x values to be matched
#' @param table values to \emph{not} be matched against
#' @return Logical vector indicating if each element of x was found in y.
#' @author Christopher Brown.  But others have had the same idea.
#' @seealso \code{\link{match}}
#' @keywords logic utilities
#' @examples
#' 
#'   1:10 %!in% c(1,3,5,9)
#'   sstr <- c("c","ab","B","bba","c",NA,"@","bla","a","Ba","%")
#'   sstr[sstr %!in% c(letters, LETTERS)]
#' 
NULL





#' Utilities for working with R operators
#' 
#' This package contains tools for manipulating R operators.
#' 
#' \tabular{ll}{ Package: \tab operator.toolss\cr Type: \tab Package\cr
#' Version: \tab 1.3.0\cr Date: \tab 2012-11-30\cr License: \tab GPL-2\cr }
#' 
#' @name operators-package
#' @docType package
#' @section Notes: Submissions welcome.
#' @author Christopher Brown <chris.brown -at - decisionpatterns.com>
#' Maintainer: Christopher Brown <chris.brown -at- decisionpatterns.com>
#' @keywords package
NULL



