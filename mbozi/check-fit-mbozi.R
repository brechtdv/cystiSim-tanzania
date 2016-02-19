### CYSTISIM: AGENT BASED TAENIA SOLIUM TRANSMISSION MODEL

## -------------------------------------------------------------------------#
## CHECK MBOZI PARAMETERS --------------------------------------------------#

### load packages
library(cystiSim); packageVersion("cystiSim")
library(bd)

## run simulation for best parameters
## SET 0.0.4
ph2m <- 0.000337299
pl2m <- 9.06E-05
m2p  <- 0.000110355
e2p  <- 0.000208517

age_coef <- c(-4, 0.02)

eff_mda <- 0.90
cov_mda <- 0.70

eff_oxf <- 0.90
cov_oxf <- 0.90

eff_vac <- 0.90
cov_vac <- 0.90

scenario <- "baseline"
main <- "BASELINE"

sim <-
cystiSim(
  n = 100,
  main = main,
  mod = {
initiate(man_mbozi, pig_mbozi, ph2m, pl2m, m2p, e2p, age_coef) %>%
  update(2000)
  }
)

win.graph(10, 4); plot(sim)
ggsave("sim1000(0.0.4).png")