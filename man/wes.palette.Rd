\name{wes.palette}
\alias{wes.palette}
\title{A Wes Anderson palette generator}
\usage{
wes.palette(name)
}
\arguments{
  \item{name}{Name of desired palette. Choices are:
  \code{GrandBudapest}, \code{Moonrise1}, \code{Royal1},
  \code{Moonrise2}, \code{Cavalcanti}, \code{Royal2},
  \code{GrandBudapest2}, \code{Moonrise3},
  \code{Chevalier}}
}
\description{
  These are a handful of color palettes from Wes Anderson movies.All
color schemes are derived from the most excellent Tumblr blog:
\href{http://wesandersonpalettes.tumblr.com/}{Wes Anderson Palettes}
}
\value{
  A \code{colorRampPalette} palette function based on the specified
  color scheme.
}
\examples{
wes.palette(3, "Royal1")
wes.palette(3, "GrandBudapest")
wes.palette(5, "Cavalcanti")
}
\keyword{colors}

