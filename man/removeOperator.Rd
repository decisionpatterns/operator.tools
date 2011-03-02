\name{removeOperator}
\alias{removeOperator}

\title{
  Unregister a an operator. 
}

\description{
  \code{removeOperator} unregisted an operator by removing it from the list of
  operators found at \code{ .Options$operators }. All operator attributes are
  that have been set will be lost.  
}

\usage{
removeOperator(x)
}

\arguments{
  \item{x}{ \code{character}. The name of the operator } 
}

\details{
  Warns if the operator has not been registered.
}

\value{ None. } 

\author{
  Christopher Brown
}

\seealso{
  \code{\link{setOperator}}, \code{\link{setOperators}} for registering Operators.
}

\examples{
  
  # Unregister ? as an operator.
  removeOperator( '?' )

}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ utilities }
