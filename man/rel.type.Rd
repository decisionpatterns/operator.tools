\name{rel.type}

\alias{rel.type}
\alias{rel.type.function}
\alias{rel.type.name}

\title{
  Get the relational type of a relational operator. 
}

\description{
  \code{rel.type} gets the relational type of a relational operator. The 
  relational type is one of \code{'gt'}, \code{'lt'}, \code{'eq'}, \code{'ne'}.  
}

\usage{
  rel.type(x)
}

\arguments{
  \item{x}{ An operators expressed as a \code{function} or \code{name} }
}

\details{
  A relational operator is an operate that relates the relationship between
  arguments. The core relational operators are: >, >=, <, <=, ==, !=, %in%.

  The relational.type is a simple roll-up of these operators. > and >= 
  are gt, etc. The value is retrieved from .Options$operators[[x]][['rel.type']]
  and can be defined for relational operators using \code{\link{setOperator}}.
  
  A relational type provides an indication of nature of the relational 
  operator. 
}

\value{
  \code{character} value of the operator.  One of: \code{'gt'}, \code{'lt'}, 
  \code{'eq'}, \code{'ne'}.
}

\author{
  Christopher Brown 
}

\seealso{
  \code{\link{operators}}, \code{\link{setOperator}} 
}

\examples{
 \dontrun{
  rel.type( `==` ) 
  rel.type( as.name('==') )
 }
}

\keyword{ utilities }
