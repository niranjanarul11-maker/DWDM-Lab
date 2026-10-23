
lower <- c(1, 5, 15, 20, 50, 80)
upper <- c(5, 15, 20, 50, 80, 110)
frequency <- c(200, 450, 300, 1500, 700, 44)

total <- sum(frequency)
cf <- cumsum(frequency)

median_position <- total / 2
i <- which(cf >= median_position)[1]

L <- lower[i]
f <- frequency[i]
cf_previous <- ifelse(i == 1, 0, cf[i-1])
h <- upper[i] - lower[i]

median_value <- L + ((median_position - cf_previous) / f) * h

print(median_value)
