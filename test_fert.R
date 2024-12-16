# X = read.csv("maha_Y.csv")
X = read.csv("mani_Y.csv")

cols = c("W", "S", "C")
X[cols] <- lapply(X[cols], factor)

temp = aov(Y ~ W * S * C, data = X)
summary(temp)

t1 = temp[["residuals"]]
plot(density(t1), main = "Manipur (tfr)")

n = length(t1)
t2 = qnorm(seq(n) / n)
chisq.test(t1, t2)