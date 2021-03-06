% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rel.type.R
\name{rel.type}
\alias{rel.type}
\alias{rel.type.function}
\alias{rel.type.name}
\alias{rel.type.call}
\alias{rel.type.expression}
\title{Get the relational type of a relational operator.}
\usage{
rel.type(x)
}
\arguments{
\item{x}{An operators expressed as a \code{function} or \code{name}}
}
\value{
\code{character} value of the operator.  One of: \code{'gt'},
\code{'lt'}, \code{'eq'}, \code{'ne'}.
}
\description{
\code{rel.type} gets the relational type of a relational operator. The
relational type is one of \code{'gt'}, \code{'lt'}, \code{'eq'},
\code{'ne'}.
}
\details{
A relational operator is an operate that relates the relationship between
arguments. The core relational operators are: >, >=, <, <=, ==, !=, %in%.

The relational.type is a simple roll-up of these operators. > and >= are gt,
etc. The value is retrieved from .Options$operators[[x]][['rel.type']] and
can be defined for relational operators using \code{\link{setOperator}}.

A relational type provides an indication of nature of the relational
operator.
}
\examples{
 \dontrun{
  rel.type( `==` ) 
  rel.type( as.name('==') )
 }

}
\seealso{
\code{\link{operators}}, \code{\link{setOperator}}
}
\author{
Christopher Brown
}
\keyword{utilities}
