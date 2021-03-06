% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_node_df.R
\name{add_node_df}
\alias{add_node_df}
\title{Add nodes from a node data frame to an existing graph object}
\usage{
add_node_df(graph, node_df)
}
\arguments{
\item{graph}{A graph object of class \code{dgr_graph}.}

\item{node_df}{A node data frame that is created using \code{\link[=create_node_df]{create_node_df()}}.}
}
\value{
A graph object of class \code{dgr_graph}.
}
\description{
With a graph object of class \code{dgr_graph} add nodes from a node data frame to
that graph.
}
\examples{
# Create an empty graph
graph <- create_graph()

# Create a node data frame (ndf)
ndf <-
  create_node_df(n = 2)

# Add the node data frame to
# the graph object to create
# a graph with nodes
graph <-
  graph \%>\%
  add_node_df(
    node_df = ndf)

# Inspect the graph's ndf
graph \%>\% get_node_df()

# Create another ndf
ndf_2 <-
  create_node_df(n = 3)

# Add the second node data
# frame to the graph object
# to add more nodes with
# attributes to the graph
graph <-
  graph \%>\%
  add_node_df(
    node_df = ndf_2)

# View the graph's internal
# node data frame using the
# `get_node_df()` function
graph \%>\% get_node_df()

}
