N = 30000
sims = sample(0:1, N, replace = T)
freqs_by_n = array(NA, N)
for (n in 1 : N){
	freqs_by_n[n] = sum(sims[1:n]) / n
}
freqs_by_n[N]
plot(10:N, 
		freqs_by_n[10:N], 
		xlim = c(10, N), 
		ylim = c(0.40, 0.60), 
		pch = ".", 
		xlab = "number of samples",
		ylab = "frequency of heads",
		main = "P(H) as a limiting frequency: 30,000 samples")
abline(h = 0.5, col = "blue")