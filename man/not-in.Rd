\name{NOT IN}
\alias{\%!in\%}
\title{  Logical Operator: NOT IN  }
\description{
  A "NOT IN" operator that is cognitively simpler than the more 
  verbose \code{ ! x \%in\% table } 
}
\usage{ x \%!in\% table }
\arguments{
  \item{x}{ values to be matched } 
  \item{table}{ values to \emph{not} be matched against }
}
\details{
  Implemented as: \code{function(x,y) ! x \%in\% y} 
}
\value{
  Logical vector indicating if each element of x was found in
  y.
}
\author{
  Christopher Brown.  But others have had the same idea.
}
\seealso{
  \code{\link{match}}
}
\examples{
  1:10 \%!in\% c(1,3,5,9)
  sstr <- c("c","ab","B","bba","c",NA,"@","bla","a","Ba","\%")
  sstr[sstr \%!in\% c(letters, LETTERS)]
}
\keyword{ logic }
\keyword{ utilities } 
