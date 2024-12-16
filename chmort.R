library(haven)
library(DHS.rates)

maha = read_dta("IABR7EFL_maha.DTA")
mani = read_dta("IABR7EFL_mani.DTA")

chmort(maha)
chmort(mani)

maha_urban = maha[maha$v025 == 1, ]
maha_rural = maha[maha$v025 == 2, ]
mani_urban = mani[mani$v025 == 1, ]
mani_rural = mani[mani$v025 == 2, ]

chmort(maha_urban)
chmort(maha_rural)
chmort(mani_urban)
chmort(mani_rural)

maha_n = maha[maha$v106 == 0, ]
maha_p = maha[maha$v106 == 1, ]
maha_s = maha[maha$v106 == 2, ]
maha_h = maha[maha$v106 == 3, ]
mani_n = mani[mani$v106 == 0, ]
mani_p = mani[mani$v106 == 1, ]
mani_s = mani[mani$v106 == 2, ]
mani_h = mani[mani$v106 == 3, ]

chmort(maha_n)
chmort(maha_p)
chmort(maha_s)
chmort(maha_h)
chmort(mani_n)
chmort(mani_p)
chmort(mani_s)
chmort(mani_h)

for (i in 1:5) {
  temp = maha[maha$v190a == i, ]
  t = chmort(temp)
  print(t[,1])
}

for (i in 1:5) {
  temp = mani[mani$v190a == i, ]
  t = chmort(temp)
  print(t[,1])
}
