### CYSTISIM: AGENT BASED TAENIA SOLIUM TRANSMISSION MODEL

## -------------------------------------------------------------------------#
## FIT MBOZI PARAMETERS ----------------------------------------------------#

### load packages
library(cystiSim); packageVersion("cystiSim")

## observed targets
prevalence(man_mbozi$taenia)  # mature only
prevalence(pig_mbozi$cysti)   # mature only

## define targets
ht <- 0.03  # mature + immature
pc <- 0.08  # mature only
pi <- 0.30

## fit parameters
## .. 1000 retained parameter sets
## .. each simulation runs 500 time points
set.seed(123)
fit_mbozi <-
fit(n.sim = 1000, n.update = 500,
    target = list(ht = ht, pc = pc, pi = pi), limit = 0.1,
    man = man_mbozi, pig = pig_mbozi, age.coef = c(-4, 0.02),
    c(0, 0.0005), c(0, 0.0005), c(0, 0.0005), c(0, 0.0005))

## order according to increasing deviance
fit_mbozi <- fit_mbozi[order(fit_mbozi[, "DEV"]), ]

## write as CSV files
write.csv(file = "fit-mbozi-20160219.csv", fit_mbozi)
write.csv2(file = "_fit-mbozi-20160219.csv", fit_mbozi)
alarm()
