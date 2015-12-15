library(igraph)

setwd("/Users/arunvarghese/Desktop/School/00 Fall 2015/Networks/HW/Assignment 7")

# read in file
polblogs <- read.graph(file="polblogs.gml",format="gml")

# convert to undirected
undir_polblogs <- as.undirected(polblogs,mode="collapse")

# create adjacency matrix
adj_matrix <- get.adjacency(undir_polblogs, type="both")

