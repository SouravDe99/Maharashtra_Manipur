library(haven)
library(DHS.rates)

# X = read_dta("IABR7EFL_maha.DTA")
# districts = c(seq(497, 516), seq(518, 531), seq(869, 870))
X = read_dta("IABR7EFL_mani.DTA")
districts = seq(272, 280)

Y_N = data.frame(matrix(nrow = 0, ncol = 4))
Y_I = data.frame(matrix(nrow = 0, ncol = 4))
Y_U = data.frame(matrix(nrow = 0, ncol = 4))

for (k in districts) {
  XD = X[X$sdist == k, ]
  for (i in 1:5) {
    XDW = XD[XD$v190a == i, ]
    for (j in 0:4) {
      XDWS = XDW[XDW$v106 == j, ]
      for (l in 1:2) {
        XDWSA = XDWS[XDWS$v025 == l, ]
        if (nrow(XDWSA) > 10) {
          temp = chmort(XDWSA)
          Y_N = rbind(Y_N, c(temp[1, 1], i, j, l))
          Y_I = rbind(Y_I, c(temp[3, 1], i, j, l))
          Y_U = rbind(Y_U, c(temp[5, 1], i, j, l))
        }
      }
    }
  }
}

colnames(Y_N) = c("Y", "W", "S", "A")
colnames(Y_I) = c("Y", "W", "S", "A")
colnames(Y_U) = c("Y", "W", "S", "A")

# write.csv(Y_N, "maha_Y_N.csv", row.names = FALSE)
# write.csv(Y_I, "maha_Y_I.csv", row.names = FALSE)
# write.csv(Y_U, "maha_Y_U.csv", row.names = FALSE)
write.csv(Y_N, "mani_Y_N.csv", row.names = FALSE)
write.csv(Y_I, "mani_Y_I.csv", row.names = FALSE)
write.csv(Y_U, "mani_Y_U.csv", row.names = FALSE)