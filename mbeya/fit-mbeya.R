### CYSTISIM: AGENT BASED TAENIA SOLIUM TRANSMISSION MODEL

## -------------------------------------------------------------------------#
## FIT MBEYA PARAMETERS ----------------------------------------------------#

### load packages
library(cystiSim); packageVersion("cystiSim")

## observed targets
prevalence(man_mbeya$taenia)  # mature only
prevalence(pig_mbeya$cysti)   # mature only

## define targets
ht <- 0.02  # mature + immature
pc <- 0.14  # mature only
pi <- 0.30

## fit parameters
## .. 1000 retained parameter sets
## .. each simulation runs 500 time points
set.seed(123)
fit_mbeya <-
fit(n.sim = 1000, n.update = 500,
    target = list(ht = ht, pc = pc, pi = pi), limit = 0.1,
    man = man_mbeya, pig = pig_mbeya, age.coef = c(-5, 0.03),
    c(0, 0.0005), c(0, 0.0005), c(0, 0.0005), c(0, 0.0005))

## order according to increasing deviance
fit_mbeya <- fit_mbeya[order(fit_mbeya[, "DEV"]), ]

## write as CSV files
write.csv(file = "fit-mbeya-20160219.csv", fit_mbeya)
write.csv2(file = "_fit-mbeya-20160219.csv", fit_mbeya)
alarm()
