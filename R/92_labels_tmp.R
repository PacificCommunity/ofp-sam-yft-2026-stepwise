library(TAF)

from <- "../06_Growth/06a_Fix_L1/mfcl.cfg"
to <- dir("..", recursive=TRUE, pattern="^mfcl.cfg$", full=TRUE)
to <- to[to != from]
cp(from, to)
