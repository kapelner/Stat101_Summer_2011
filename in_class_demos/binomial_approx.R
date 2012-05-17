n = 1500; 
p = 0.02; 
support_max = 300; 
bin = array(NA, support_max); 
pois = array(NA, support_max); 
for (i in 1 : support_max){
	bin[i] = dbinom(i, n, p); 
	pois[i] = dpois(i, n * p); 
}
plot(bin[1:60],
		pch = 16, 
		col = "red", 
		xlab = "Number of students enrolled in Stat 101", 
		ylab = "probability", 
		main = "Class Enrollment Probabilities for Stat 101"); 
points(pois[1:60], col = "green", pch = 16)