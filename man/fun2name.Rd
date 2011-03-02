\name{fun2name & name2fun }
\alias{fun2name}
\alias{name2fun}

\title{
  Convert between a function and its name and vice versa.
}

\description{
  \code{fun2name} compares a function (body) to all defined functions. If an
  identical match is found to a defined function, that function is returned.
  NB. This does not search through S4 methods.

  \code{name2fun} simply converts its argument to a name and than evals it 
  to produce a function definition
}
\usage{
  fun2name(f)
  name2fun(x)
}

\arguments{
  \item{f}{ A function. }
  \item{x}{ An object to be converted into a name and eval'd }
}

\details{
  \code{fun2name} compares the function against existing functions using 
  \code{\link{identical}}. If a match is found, the name of the matching 
  function ( expressed as a \code{character} ) is returned.

  \code{fun2name} will not work for S4 Methods.   
}

\value{
  \code{character}.  A name of the function. 
}

\author{
  Christopher Brown
}

\seealso{
  \code{\link{identical}}. 

  For the S4 methods, see \code{\link[methods]{setMethod}} 
}

\examples{

  # fun2name( ls ) 

}

\keyword{ utilities }
