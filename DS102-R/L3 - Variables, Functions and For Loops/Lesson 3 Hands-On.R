diam <- function(Width) {
  (2 / 2.54) * (Width / (0.92) * (4/3) * (pi)) ^ 1/3
}
#
# Saw the correct equation in the STATPROG Problem Solving Lesson #3
# and decided to edit the file. Original equation below.
# (2 / 2.54 * ((Width / (0.92 * (4/3) * pi))) ^ (1/3))

sph.weight.grams <- c(0.96,1.51,2.17,3.85,4.45,6.02)

for (g in sph.weight.grams) {
  c <-diam(g)
  cat ("For a weight of", g,"grams, the diameter of the ice sphere is",c,"inches.", "\n")
}