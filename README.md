## cystiSim Tanzania

Scripts and results of [`cystiSim`](https://github.com/brechtdv/cystiSim) applied to the Mbeya and Mbozi districts in Tanzania.

#### Baseline settings

Parameter | Mbeya | Mbozi
--------- | ----- | -----
Human population size | 6000 | 6000
Human sex distribution | [Braae et al. 2015](http://dx.doi.org/10.1016/j.actatropica.2015.10.012) | [Braae et al. 2015](http://dx.doi.org/10.1016/j.actatropica.2015.10.012)
Human age distribution | [Braae et al. 2015](http://dx.doi.org/10.1016/j.actatropica.2015.10.012) | [Braae et al. 2015](http://dx.doi.org/10.1016/j.actatropica.2015.10.012)
Human taeniosis prevalence | 0.02 | 0.03
Age-related taeniosis rate (intercept, slope) | (-5, 0.03) | (-4, 0.02)
Pig population size | 498 | 498
Pig age distribution | [Braae et al. 2014](http://dx.doi.org/10.1186/s13071-014-0574-7) | [Braae et al. 2014](http://dx.doi.org/10.1186/s13071-014-0574-7)
Pig slaughter rate | `slaughter_nbinom(0.70, 80)` | `slaughter_nbinom(0.70, 80)`
Porcine cysticercosis prevalence | 0.14 | 0.08
Porcine cysticercosis infection intensity | 0.30 | 0.30

#### Acknowledgments

[`cystiSim`](https://github.com/brechtdv/cystiSim) was developed by [@UCBraae](https://twitter.com/ucbraae) and [@brechtdv](https://github.com/brechtdv), within the framework of [CYSTINET](http://www.cystinet.org/), the European Network on taeniosis/cysticercosis, COST ACTION TD1302.
