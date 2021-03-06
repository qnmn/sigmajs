% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neighbours.R
\name{sg_neighbours}
\alias{sg_neighbours}
\alias{sg_neighbors}
\alias{sg_neighbours_p}
\alias{sg_neighbors_p}
\title{Highlight neighbours}
\usage{
sg_neighbours(
  sg,
  nodes = "#eee",
  edges = "#eee",
  on = c("clickNode", "overNode", "clickNode|overNode")
)

sg_neighbors(
  sg,
  nodes = "#eee",
  edges = "#eee",
  on = c("clickNode", "overNode", "clickNode|overNode")
)

sg_neighbours_p(
  proxy,
  nodes = "#eee",
  edges = "#eee",
  on = c("clickNode", "overNode", "clickNode|overNode")
)

sg_neighbors_p(
  proxy,
  nodes = "#eee",
  edges = "#eee",
  on = c("clickNode", "overNode", "clickNode|overNode")
)
}
\arguments{
\item{sg}{An object of class \code{sigmajs}as intatiated by \code{\link{sigmajs}}.}

\item{nodes, edges}{Color of nodes and edges}

\item{on}{The sigmajs event on which to trigger the neighbours highlighting.
'clickNode' (default) means when a node is clicked on. 'overNode' means
when mouse is hovering on a node. 'clickNode|overNode' means a combination
of the two modes at the same time.}

\item{proxy}{An object of class \code{sigmajsProxy} as returned by \code{\link{sigmajsProxy}}.}
}
\value{
A modified version of the \code{sg} object.
}
\description{
Highlight node neighbours on click.
}
\examples{
nodes <- sg_make_nodes()
edges <- sg_make_edges(nodes, 20)

sigmajs() \%>\%
  sg_nodes(nodes, id, size, color) \%>\%
  sg_edges(edges, id, source, target) \%>\%
  sg_layout() \%>\%
  sg_neighbours()

}
