library(haven)
library(DHS.rates)

maha = read_dta("IAIR7EFL_maha.DTA")
mani = read_dta("IAIR7EFL_mani.DTA")

fert(maha, Indicator = "tfr")
fert(mani, Indicator = "tfr")

fert(maha, Indicator = "gfr")
fert(mani, Indicator = "gfr")

fert(maha, Indicator = "asfr")
fert(mani, Indicator = "asfr")

maha_urban = maha[maha$v025 == 1, ]
maha_rural = maha[maha$v025 == 2, ]
mani_urban = mani[mani$v025 == 1, ]
mani_rural = mani[mani$v025 == 2, ]

fert(maha_urban, Indicator = "tfr")
fert(maha_rural, Indicator = "tfr")
fert(mani_urban, Indicator = "tfr")
fert(mani_rural, Indicator = "tfr")

fert(maha_urban, Indicator = "gfr")
fert(maha_rural, Indicator = "gfr")
fert(mani_urban, Indicator = "gfr")
fert(mani_rural, Indicator = "gfr")

fert(maha_urban, Indicator = "asfr")
fert(maha_rural, Indicator = "asfr")
fert(mani_urban, Indicator = "asfr")
fert(mani_rural, Indicator = "asfr")

maha_n = maha[maha$v106 == 0, ]
maha_p = maha[maha$v106 == 1, ]
maha_s = maha[maha$v106 == 2, ]
maha_h = maha[maha$v106 == 3, ]
mani_n = mani[mani$v106 == 0, ]
mani_p = mani[mani$v106 == 1, ]
mani_s = mani[mani$v106 == 2, ]
mani_h = mani[mani$v106 == 3, ]

fert(maha_n, Indicator = "tfr")
fert(maha_p, Indicator = "tfr")
fert(maha_s, Indicator = "tfr")
fert(maha_h, Indicator = "tfr")
fert(mani_n, Indicator = "tfr")
fert(mani_p, Indicator = "tfr")
fert(mani_s, Indicator = "tfr")
fert(mani_h, Indicator = "tfr")

fert(maha_n, Indicator = "gfr")
fert(maha_p, Indicator = "gfr")
fert(maha_s, Indicator = "gfr")
fert(maha_h, Indicator = "gfr")
fert(mani_n, Indicator = "gfr")
fert(mani_p, Indicator = "gfr")
fert(mani_s, Indicator = "gfr")
fert(mani_h, Indicator = "gfr")

maha_n_urban = maha_n[maha_n$v025 == 1, ]
maha_n_rural = maha_n[maha_n$v025 == 2, ]
maha_p_urban = maha_p[maha_p$v025 == 1, ]
maha_p_rural = maha_p[maha_p$v025 == 2, ]
maha_s_urban = maha_s[maha_s$v025 == 1, ]
maha_s_rural = maha_s[maha_s$v025 == 2, ]
maha_h_urban = maha_h[maha_h$v025 == 1, ]
maha_h_rural = maha_h[maha_h$v025 == 2, ]
mani_n_urban = mani_n[mani_n$v025 == 1, ]
mani_n_rural = mani_n[mani_n$v025 == 2, ]
mani_p_urban = mani_p[mani_p$v025 == 1, ]
mani_p_rural = mani_p[mani_p$v025 == 2, ]
mani_s_urban = mani_s[mani_s$v025 == 1, ]
mani_s_rural = mani_s[mani_s$v025 == 2, ]
mani_h_urban = mani_h[mani_h$v025 == 1, ]
mani_h_rural = mani_h[mani_h$v025 == 2, ]

fert(maha_n_urban, Indicator = "tfr")
fert(maha_n_rural, Indicator = "tfr")
fert(maha_p_urban, Indicator = "tfr")
fert(maha_p_rural, Indicator = "tfr")
fert(maha_s_urban, Indicator = "tfr")
fert(maha_s_rural, Indicator = "tfr")
fert(maha_h_urban, Indicator = "tfr")
fert(maha_h_rural, Indicator = "tfr")
fert(mani_n_urban, Indicator = "tfr")
fert(mani_n_rural, Indicator = "tfr")
fert(mani_p_urban, Indicator = "tfr")
fert(mani_p_rural, Indicator = "tfr")
fert(mani_s_urban, Indicator = "tfr")
fert(mani_s_rural, Indicator = "tfr")
fert(mani_h_urban, Indicator = "tfr")
fert(mani_h_rural, Indicator = "tfr")

fert(maha_n_urban, Indicator = "gfr")
fert(maha_n_rural, Indicator = "gfr")
fert(maha_p_urban, Indicator = "gfr")
fert(maha_p_rural, Indicator = "gfr")
fert(maha_s_urban, Indicator = "gfr")
fert(maha_s_rural, Indicator = "gfr")
fert(maha_h_urban, Indicator = "gfr")
fert(maha_h_rural, Indicator = "gfr")
fert(mani_n_urban, Indicator = "gfr")
fert(mani_n_rural, Indicator = "gfr")
fert(mani_p_urban, Indicator = "gfr")
fert(mani_p_rural, Indicator = "gfr")
fert(mani_s_urban, Indicator = "gfr")
fert(mani_s_rural, Indicator = "gfr")
fert(mani_h_urban, Indicator = "gfr")
fert(mani_h_rural, Indicator = "gfr")

for (i in 1:5) {
  temp = maha[maha$v190a == i, ]
  t = fert(temp, Indicator = "tfr")
  print(t[1])
}

for (i in 1:5) {
  temp = mani[mani$v190a == i, ]
  t = fert(temp, Indicator = "tfr")
  print(t[1])
}