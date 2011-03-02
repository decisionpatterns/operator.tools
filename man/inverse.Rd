\name{inverse}
\docType{methods}

\alias{inverse}
\alias{inverse}
\alias{inverse.name}
\alias{inverse.function}

\title{ Invert an R operator }

\description{
  \code{inverse} is a S4 generic method for inverting an R 
  operator in the mathematical sense. Presently, inverses are defined for 
  relational operators, i.e. changing \code{>} to \code{<=} and \code{\%in\%}
  to \code{\%!in\%} etc.
}

\section{Methods}{
  \describe{
    \item{x = "name"}{ A \code{\link{name}} object. }
    \item{x = "function"}{ A \code{\link{function}} object. }
  }
}

\arguments{
  \item{x}{ An object that represents an R operator }
}


\details{
  Arguments will be checked against the defined list of inverses, 
  .Options$operators.inverse.  If an entry exists, the corresponding 
  inverse is returned.
}

\value{
   \code{inverse} returns the inverse in the same form as the \code{x} 
   argument. Thus, if a name is provided, a name is returned. If a function
   is provided, a function is returned.  
}

\references{
  http://en.wikipedia.org/wiki/Inverse_mathematics. 
}

\seealso{
    \code{\link{operators}} especially \code{operators(type="relational"))}
}

\author{
  Christopher Brown 
}


\examples{ 
  # inverse( as.name( '!=' ) )
  # inverse( `==` ) 
}

\keyword{methods}
\keyword{symbolmath}
\keyword{utilities}
