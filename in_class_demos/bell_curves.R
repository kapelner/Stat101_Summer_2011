





#Roll n dice
dice_samp = sample(c(1,2,3,4,5,6), hist_n, replace = T)
#show PMF
hist(dice_samp, xlab = "", ylab = "", main = "", breaks = 100, col = "red")

#avg num heads in coin flips
for (n in n_samps){
	avgs = array(NA, hist_n)
	for (i in 1 : hist_n){
		dice_samp = sample(c(1,2,3,4,5,6), n, replace = T)
		avgs[i] = sum(dice_samp) / n
	}
	hist(avgs, xlab = "", main = "", ylab = "", breaks = 50)
}




#that was discrete... now continuous

#waiting for the bus
bus_waits = runif(samp_n, 0, 10)
#show PDF estimate
hist(bus_waits, xlim = c(-0.05, 10.05), xlab = "Time Waiting for bus", main = paste("Estimated PDF from", samp_n, "waits"), breaks = 100)

#sum of all waits
sums = array(NA, normal_approx_n)
for (i in 1 : normal_approx_n){
	bus_waits = runif(samp_n, 0, 10)
	sums[i] = sum(bus_waits)
}
hist(sums, xlab = "Sum of Bus Waits", main = paste("Sum of", samp_n, "Bus Waits sampled", normal_approx_n, "times"), breaks = 200)

#avg of all waits
avgs = array(NA, normal_approx_n)
for (i in 1 : normal_approx_n){
	bus_waits = runif(samp_n, 0, 10)
	avgs[i] = sum(bus_waits) / samp_n
}
hist(avgs, xlab = "Avg of Bus Waits", main = paste("Avg of", samp_n, "Bus Waits sampled", normal_approx_n, "times"), breaks = 200)

#lightbulb breaking in years
lightbulbs = rbeta(samp_n, 0.15, 0.15) * 10
#show PDF estimate
hist(lightbulbs, xlim = c(-0.05, 10.05), xlab = "Time Before Breaking (years)", main = paste("Estimated PDF from", samp_n, "Lightbulbs"), breaks = 100)

#sum of all lightbulb breaks
sums = array(NA, normal_approx_n)
for (i in 1 : normal_approx_n){
	lightbulbs = rbeta(samp_n, 0.15, 0.15) * 10
	sums[i] = sum(lightbulbs)
}
hist(sums, xlab = "Sum of Lightbulb break times (years)", main = paste("Sum of", samp_n, "Lightbulb breakings sampled", normal_approx_n, "times"), breaks = 200)

#avg of all lightbulb breaks
avgs = array(NA, normal_approx_n)
for (i in 1 : normal_approx_n){
	lightbulbs = rbeta(samp_n, 0.15, 0.15) * 10
	avgs[i] = sum(lightbulbs) / samp_n
}
hist(avgs, xlab = "Avg of Lightbulb break times (years)", main = paste("Avg of", samp_n, "Lightbulb breakings sampled", normal_approx_n, "times"), breaks = 200)



