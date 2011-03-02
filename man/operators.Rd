\name{operators}
\Rdversion{1.1}
\alias{operators}
\title{
  Return the _names_ of defined operators.
}

\description{
  \code{operators} returns the names of defined operators. Argument \code{types}
  can be used to select operators of a specified type(s) or GROUPING(s).  
  See Details for specifics.
}

\usage{
  operators(types = "REGISTERED" )
}

\arguments{
  \item{types}{   
    A character vector with the types of operators to return. The types may 
    one or more of: 'namespace', 'component', 'indexing', 
    'sequence', 'arithmetic', 'relational', 
    'logical', 'tilde', 'assignment', 'help', 'user', or user-defined type
    specified in a call to \code{\link{setOperator}}.  It may also be 
    one of the special groups: 'REG(ISTERED)', 
    'UNREG(ISTERED)', 'SPECIAL', 'ALL'. See Details. 
  }
}


\details{
  \code{operators} provides the \bold{names} of defined operators. 
  These can be either registered operators (using \code{\link{setOperators}}),
  or unregistered operators definde by the \code{\%any\%} syntax.

  By default, only registered operators are returned. This is purely for
  performance reasons as an exhausting search for \code{\%any\%} functions
  is expensive.

  R-core operators by type are:
  \tabular{rl}{
      namespace  \tab :: ::: \cr
      component  \tab @ $ \cr
      indexing   \tab \[ \[\[ \cr 
      sequence   \tab : \cr
      arithmetic \tab + - * / ^ \%\% \%/\% \cr
      relational \tab < > <= >= == != \%in\% \%!in\% \cr
      logical    \tab ! & && | || \cr
      tilde      \tab ~ \cr
      assignment \tab <- <<- -> ->> = \cr
      help       \tab ? \cr
   }

   See \link[base]{Syntax}.

   \code{types} may also be one a special operator groupings:
   \itemize{
      \item REG(ISTERED): (Default). Those registered by \code{\link{setOperators}}
      \item UNREG(ISTERED): Unregisted operators, requires expensive search.
      \item ALL: All operators, requires expensive search of environments. 
      \item SPECIAL: All operators defined using the \code{\%any\%} syntax.
   }

}

\value{
  character vector of unique operator names. 
}


\note{
  The right arrow assignment operators, \code{->} and \code{->>} 
  is not an operator but a syntatic variant.  Consequently, it 
  does not behave properly as an operator.  They are
  omitted from the operator list as they are not correctly 
  identified as primitives or functions by the R language.
}

\references{
  http://cran.r-project.org/doc/manuals/R-lang.html
  https://bugs.r-project.org/bugzilla3/show_bug.cgi?id=14310
}


\author{
  Christopher Brown
}

\seealso{
  \code{\link{Syntax}}, \code{\link{setOperator}}, \code{\link{setOperators}},
  and the help files on the individial operators.
}

\examples{

 \dontrun{ 
  operators()
  operators( types="arithmetic" )
  operators( types=c("arithmetic","logical" ) )
  operators( types='ALL' )
  operators( types='REG' )
  operators( types='UNREG' )
  operators( types='SPECIAL' )
 }

}

\keyword{ utilities }
