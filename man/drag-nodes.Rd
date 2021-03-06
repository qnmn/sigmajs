% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drag.R
\name{sg_drag_nodes}
\alias{sg_drag_nodes}
\alias{sg_drag_nodes_start_p}
\alias{sg_drag_nodes_kill_p}
\title{Drag nodes}
\usage{
sg_drag_nodes(sg)

sg_drag_nodes_start_p(proxy)

sg_drag_nodes_kill_p(proxy)
}
\arguments{
\item{sg}{An object of class \code{sigmajs}as intatiated by \code{\link{sigmajs}}.}

\item{proxy}{An object of class \code{sigmajsProxy} as returned by \code{\link{sigmajsProxy}}.}
}
\value{
\code{sg_drag_nodes} An object of class \code{htmlwidget} which renders the visualisation on print.
While \code{sg_drag_nodes_start_p} and \code{sg_drag_nodes_kill_p}
}
\description{
Allow user to drag and drop nodes.
}
\examples{
# generate graph
nodes <- sg_make_nodes(20)
edges <- sg_make_edges(nodes, 35)

sigmajs() \%>\%
  sg_nodes(nodes, id, label, size) \%>\%
  sg_edges(edges, id, source, target) \%>\%
  sg_drag_nodes()

\dontrun{
# proxies
demo("drag-nodes", package = "sigmajs")
}

}
