\name{wes.palette}
\alias{wes.palette}
\title{A Wes Anderson palette generator}
\usage{
wes.palette(n, name)
}
\arguments{
  \item{n}{Number of colors desired. Unfortunately most
  palettes now only have 4 or 5 colors. But hopefully we'll
  add more palettes soon. All color schemes are derived
  from the most excellent Tumblr blog:
  \href{http://wesandersonpalettes.tumblr.com/}{Wes
  Anderson Palettes}}

  \item{name}{Name of desired palette. Choices are:
  \code{GrandBudapest}, \code{Moonrise1}, \code{Royal1},
  \code{Moonrise2}, \code{Cavalcanti}, \code{Royal2},
  \code{GrandBudapest2}, \code{Moonrise3},
  \code{Chevalier}}
}
\description{
These are a handful of color palettes from Wes Anderson
movies.
}
\examples{
wes.palette(3, "Royal1")
wes.palette(3, "GrandBudapest")
wes.palette(5, "Cavalcanti")
}
\keyword{colors}

