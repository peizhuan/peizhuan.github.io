---
permalink: /programs/
layout: archive
title: "Programs"
author_profile: true
---

{% include base_path %}

<h3>"Local Polynomial Order in Regression Discontinuity Designs": Pei, Lee, Card, Weber (2020)</h3>

`rdmse`: This Stata package estimates the (asymptotic) mean squared error of a conventional/bias-corrected local polynomial regression discontinuity/kink estimator for given bandwidths and polynomial orders. It builds on the 2014 version of the Stata command `rdrobust` by Sebastian Calonico, Matias Cattaneo and Rocío Titiunik. To install, type in Stata

`net install rdmse, from(https://raw.githubusercontent.com/peizhuan/rdmse/master) replace`

The Mathematica file that computes the theoretical AMSE and generates Figure 1 of the paper is [here](https://peizhuan.github.io/program_files/Figure 1 AMSE.nb). 
<br>
<br>
<h3>"Poorly Measured Confounders Are More Useful on the Left Than on the Right": Pei, Pischke, Schwandt (2019)</h3>
Programs and data are posted at: [https://www.tandfonline.com/doi/suppl/10.1080/07350015.2018.1462710](https://www.tandfonline.com/doi/suppl/10.1080/07350015.2018.1462710){:target="_blank"}
<br>
<br>
<h3>"Regression Kink Design: Theory and Practice": Card, Lee, Pei, Weber (2017)</h3>
Simulation programs are [here](https://peizhuan.github.io/program_files/rkd_AIE_simulation_programs.zip). 
<br>
<br>
<h3>"Eligibility Recertification and Dynamic Opt-In Incentives in Income-Tested Social Programs: Evidence from Medicaid/CHIP": Pei (2017)</h3>
Programs and data are posted at: [https://www.aeaweb.org/articles?id=10.1257/pol.20130271](https://www.aeaweb.org/articles?id=10.1257/pol.20130271){:target="_blank"}
<br>
<br>
<h3>"Inference on Causal Effects in a Generalized Regression Kink Design": Card, Lee, Pei, Weber (2015)</h3>
`altrdrobust`: The Stata .ado and .mo files used in the paper are [here](https://peizhuan.github.io/program_files/rkd ado files.zip). Note that kconst.ado, kweight.mo, and regconst.mo come with the 2014 version of the Stata package --rdrobust-- by Sebastian Calonico, Matias Cattaneo and Rocío Titiunik. Please put the .ado and .mo files under your Stata ado directory (I place altrdrobust.ado under c:\ado\plus\a, kweight.mo under c:\ado\plus\k, etc). Please see [this do file](https://peizhuan.github.io/program_files/altrdrobust implementation examples.do) for examples of using the estimation commands.
<br>
<br>
<h3>"The Effect of Unemployment Benefits on the Duration of Unemployment: New Evidence from a Regression Kink Design in Missouri, 2003-2013": Card, Johnston, Leung, Mas, Pei (2015)</h3>
Programs and data are posted at: [https://www.aeaweb.org/articles?id=10.1257/aer.p20151061](https://www.aeaweb.org/articles?id=10.1257/aer.p20151061){:target="_blank"}
<br>
