hist_n = 5000
n_samps = c(5, 10, 100, 1000, 10000, 100000)
num_breaks = 300

par(mfrow = c(4, 6))

#50% bernoulli
#coin_samp = sample(c(0, 1), hist_n, replace = T)
#hist(coin_samp, xlab = "", ylab = "", main = "", breaks = 100, col = "blue")
for (n in n_samps){
	sums = array(NA, hist_n)
	for (i in 1 : hist_n){
		lottery_samp = sample(c(0, 1), n, replace = T)
		sums[i] = sum(lottery_samp)
	}
	hist(sums, xlab = "", main = "", ylab = "", breaks = num_breaks)
}

#10% bernoulli
#lottery_samp = sample(c(0,1), prob = c(.9, .1), hist_n, replace = T)
#hist(lottery_samp, xlab = "", ylab = "", main = "", breaks = 100, col = "red")
for (n in n_samps){
	sums = array(NA, hist_n)
	for (i in 1 : hist_n){
		lottery_samp = sample(c(0, 1), prob = c(.9, .1), n, replace = T)
		sums[i] = sum(lottery_samp)
	}
	hist(sums, xlab = "", main = "", ylab = "", breaks = num_breaks)
}

#1% bernoulli
#lottery_samp = sample(c(0,1), prob = c(.99, .01), hist_n, replace = T)
#hist(lottery_samp, xlab = "", ylab = "", main = "", breaks = 100, col = "red")
for (n in n_samps){
	sums = array(NA, hist_n)
	for (i in 1 : hist_n){
		lottery_samp = sample(c(0, 1), prob = c(.99, .01), n, replace = T)
		sums[i] = sum(lottery_samp)
	}
	hist(sums, xlab = "", main = "", ylab = "", breaks = num_breaks)
}

#0.01% bernoulli
#lottery_samp = sample(c(0,1), prob = c(.9999, .0001), hist_n, replace = T)
#hist(lottery_samp, xlab = "", ylab = "", main = "", breaks = 100, col = "red")
for (n in n_samps){
	sums = array(NA, hist_n)
	for (i in 1 : hist_n){
		lottery_samp = sample(c(0, 1), prob = c(.999, .001), n, replace = T)
		sums[i] = sum(lottery_samp)
	}
	hist(sums, xlab = "", main = "", ylab = "", breaks = num_breaks)
}