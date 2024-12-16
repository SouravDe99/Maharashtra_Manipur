library(haven)
library(DHS.rates)
library(DescTools)

# X = read_dta("IAIR7EFL_maha.DTA")
# districts = c(seq(497, 516), seq(518, 531), seq(869, 870))
X = read_dta("IAIR7EFL_mani.DTA")
districts = seq(272, 280)

Y = c()
Y_U = c()
Y_R = c()

for (k in districts) {
  XD = X[X$sdist == k, ]
  if (nrow(XD) > 0) {
    temp = fert(XD, Indicator = "tfr")
    Y = c(Y, temp[1])
  }
  
  XDW = XD[XD$v025 == 1, ]
  if (nrow(XDW) > 0) {
    temp = fert(XDW, Indicator = "tfr")
    Y_U = c(Y_U, temp[1])
  }
  
  XDW = XD[XD$v025 == 2, ]
  if (nrow(XDW) > 0) {
    temp = fert(XDW, Indicator = "tfr")
    Y_R = c(Y_R, temp[1])
  }
}

plot(Lc(Y), col = "blue", main = "Manipur (total)")
Gini(Y)

plot(Lc(Y_U), col = "blue", main = "Manipur (urban)")
Gini(Y_U)

plot(Lc(Y_R), col = "blue", main = "Manipur (rural)")
Gini(Y_R)