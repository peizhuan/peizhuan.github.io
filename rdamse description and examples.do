*** this do file illustrates the syntax of rdamse (downloaded from https://sites.google.com/site/peizhuan/programs)
*** the name of the dependent variable is Y
*** the name of the running variable is x
*** the name of the treatment variable is treat

*** I'm using the uniform kernel below, but it can be easily changed to kernel(triangular); 

*** note that the maximum polynomial allowed in the p() argument is 8

************************
***** sharp design *****
************************
** Evaluate AMSE at the CCT bandwidths **
altrdbwselect Y x, c(0) deriv(0) p(1) q(2) kernel(uniform) bwselect(CCT)
local bw_h=e(h_CCT)
local bw_b=e(b_CCT)

** Note that --altrdbwselect-- is an alternative implementation of the CCT bandwidth selector.
** It speeds up the Calonico, Cattaneo, Titiunik (2014) implementation with a modification -- see paper text for details.
** Of course, the user is free to choose other bandwidth selection algorightms.

** The command below returns the estimated AMSE for the conventional and bias-corrected 
** local linear (since p=1) RD (since deriv is set to 0) estimators.
** c(0) specifies that the cutoff is normalized to 0.
rdamse Y x, deriv(0) c(0) p(1) h(`bw_h') b(`bw_b') kernel(uniform)

** Manually input alternative bandwidths **
rdamse Y x, deriv(0) c(0) p(1) h(0.5) b(1.2) kernel(uniform)

** RKD with local linear estimator: set deriv to 1 **
rdamse Y x, deriv(1) c(0) p(1) h(0.5) b(1.2) kernel(uniform)

** To exactly follow the Calonico, Cattaneo, Titiunik (2014) variance estimation in computing the AMSE,
** replace "rdamse" in the commands above with "rdamse_cct2014", e.g.
rdamse_cct2014 Y x, deriv(0) c(0) p(1) h(0.5) b(1.2) kernel(uniform)

** As with --altrdbwselect-- above, --rdamse-- uses a modification to speed up the computation.

** Note that --rdamse_cct2014-- only computes the AMSE for the conventional estimators by gathering 
** the relevant quantities calculated by --rdrobust_2014--, which was written by the CCT team. 
 
** --rdamse_cct2014-- does NOT compute the AMSE for the bias-corrected estimators, because 
** some of the quantities required for the AMSE calculation are not computed by --rdrobust_2014-- (or --rdrobust--). 

************************
***** fuzzy design *****
************************
** Specify the fuzzy(treat) option in all commands **
** Returns the "fuzzy CCT" bandwidths as per Card, Lee, Pei, Weber (2015) Econometrica ** 
altfrdbwselect Y x, fuzzy(treat) c(0) p(1) q(2) deriv(0) kernel(uniform) bwselect(CCT)
local fbw_h = e(h_F_CCT)
local fbw_b = e(b_F_CCT)

** The command below returns the estimated AMSE for the conventional and bias-corrected 
** local linear (since p=1) RD (since deriv is set to 0) estimators.
** c(0) specifies that the cutoff is normalized to 0.
rdamse Y x, c(0) fuzzy(treat) p(1) h(`fbw_h') b(`fbw_b') deriv(1) kernel(uniform) 

** Manually input alternative bandwidths **
rdamse Y x, deriv(0) fuzzy(treat) c(0) p(1) h(0.5) b(1.2) kernel(uniform)

** RKD with local linear estimator: set deriv to 1 **
rdamse Y x, deriv(1) fuzzy(treat) c(0) p(1) h(0.5) b(1.2) kernel(uniform)

** To exactly follow the Calonico, Cattaneo, Titiunik (2014) variance estimation in computing the AMSE,
** replace "rdamse" in the commands above with "rdamse_cct2014", e.g.
rdamse_cct2014 Y x, c(0) fuzzy(treat) p(1) h(`fbw_h') b(`fbw_b') deriv(1) kernel(uniform) 

** Note that --rdamse_cct2014-- only computes the AMSE for the conventional estimators by gathering 
** the relevant quantities calculated by --rdrobust_2014--, which was written by the CCT team. 
 
** --rdamse_cct2014-- does NOT compute the AMSE for the bias-corrected estimators, because 
** some of the quantities required for the AMSE calculation are not computed by --rdrobust_2014-- (or --rdrobust--).
