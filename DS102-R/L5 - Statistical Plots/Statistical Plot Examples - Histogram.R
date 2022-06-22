View(warpbreaks)

weaving <- ggplot(warpbreaks, aes(x=breaks))

weaving + geom_histogram(binwidth = 10, color = "blue", fill = "dark blue") + ggtitle("Histogram of Warp Breaks When Weaving") + xlab ("Warp Breaks") + ylab ("Count of Values")

#Bin width is how many bars you have in your graph.

