plot(galton$child, 
		galton$parent, 
		xlim = c(60, 75),
		ylim = c(60, 75),
		ylab = "Child Height (in)", 
		xlab = "Parent Height avg and adj (in)", 
		main = "Child Height vs Parent Height");

mod = lm(galton$child ~ galton$parent);
mod$coefficients

abline(mod, col = "red");
abline(a = 0, b = 1, col = "blue");