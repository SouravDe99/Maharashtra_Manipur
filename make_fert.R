library(haven)
library(DHS.rates)

# X = read_dta("IAIR7EFL_maha.DTA")
# districts = c(seq(497, 516), seq(518, 531), seq(869, 870))
X = read_dta("IAIR7EFL_mani.DTA")
districts = seq(272, 280)

Y = data.frame(matrix(nrow = 0, ncol = 4))

for (k in districts) {
  XD = X[X$sdist == k, ]
  for (i in 1:5) {
    XDW = XD[XD$v190a == i, ]
    for (j in 0:3) {
      XDWS = XDW[XDW$v106 == j, ]
      
      XDWSC = XDWS[XDWS$v302a == 0, ]
      if (nrow(XDWSC) > 2) {
        temp = fert(XDWSC, Indicator = "tfr")
        Y = rbind(Y, c(temp[1], i, j, 0))
      }
      
      XDWSC = XDWS[XDWS$v302a >= 1, ]
      if (nrow(XDWSC) > 2) {
        temp = fert(XDWSC, Indicator = "tfr")
        Y = rbind(Y, c(temp[1], i, j, 1))
      }
    }
  }
}

colnames(Y) = c("Y", "W", "S", "C")

# write.csv(Y, "maha_Y.csv", row.names = FALSE)
write.csv(Y, "mani_Y.csv", row.names = FALSE)