
x = seq(-6, 6, 0.01);
plot(x, dt(x, 1), 
  type = "l", 
  col = "chocolate", 
  ylim = c(0, 0.39), 
  ylab = "prob density", 
  xlab = "t (or z)", 
  main = "The T distribution as an approximation\nto the Z distribution");
lines(x, dt(x, 5), type = "l", col = "blue");
lines(x, dt(x, 10), type = "l", col = "green");
lines(x, dt(x, 20), type = "l", col = "yellow");
lines(x, dt(x, 30), type = "l", col = "brown");
lines(x, dt(x, 50), type = "l", col = "purple");
lines(x, dt(x, 100), type = "l", col = "gray");
lines(x, dnorm(x), type = "l", col = "red");
#placeholder for last line


x = seq(1.96, 3, 0.001);
plot(x, dt(x, 1), 
		pch = ".", 
		col = "chocolate", 
		ylim = c(0, 0.07), xlim = c(1.96, 3),
		ylab = "prob density", 
		xlab = "t (or z)", 
		main = "The T distribution as an approximation\nto the Z distribution");
lines(x, dt(x, 5), pch = ".", col = "blue");
lines(x, dt(x, 10), pch = ".", col = "green");
lines(x, dt(x, 20), pch = ".", col = "yellow");
lines(x, dt(x, 30), pch = ".", col = "brown");
lines(x, dt(x, 50), pch = ".", col = "purple");
lines(x, dt(x, 100), pch = ".", col = "gray");
lines(x, dnorm(x), pch = ".", col = "red");
#placeholder for last line