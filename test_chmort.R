X_N = read.csv("maha_Y_N.csv")
X_I = read.csv("maha_Y_I.csv")
X_U = read.csv("maha_Y_U.csv")
# X_N = read.csv("mani_Y_N.csv")
# X_I = read.csv("mani_Y_I.csv")
# X_U = read.csv("mani_Y_U.csv")

cols = c("W", "S", "A")

X_N[cols] <- lapply(X_N[cols], factor)
X_I[cols] <- lapply(X_I[cols], factor)
X_U[cols] <- lapply(X_U[cols], factor)

# temp = aov(Y ~ W * S * A, data = X_N)
# summary(temp)

temp = aov(Y ~ W * S * A, data = X_I)
summary(temp)

# temp = aov(Y ~ W * S * A, data = X_U)
# summary(temp)

t1 = temp[["residuals"]]
plot(density(t1), main = "Maharashtra (imr)")

n = length(t1)
t2 = qnorm(seq(n)/n)
chisq.test(t1, t2)