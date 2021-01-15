*** the dependent variable is y
*** running variable is v
*** the treatment variable is treat ***

*** I'm using the uniform kernel below, but it can be easily changed to kernel(triangular); 

*********************************
***** Default CCT bandwidth *****
*********************************
***** Bias-corrected Local Linear *****
altrdrobust y v, c(0) p(1) q(2) deriv(1) fuzzy(treat) kernel(uniform) bwselect(CCT)

***** Bias-corrected Local quadratic ****
altrdrobust y v, c(0) p(2) q(3) deriv(1) fuzzy(treat) kernel(uniform) bwselect(CCT)


************************************************
***** CCT bandwidth with no regularization *****
************************************************
***** Bias-corrected Local linear *****
altrdrobust y v, c(0) p(1) q(2) deriv(1) fuzzy(treat) kernel(uniform) bwselect(CCT) scaleregul(0)

***** Bias-corrected Local quadratic ****
altrdrobust y v, c(0) p(2) q(3) deriv(1) fuzzy(treat) kernel(uniform) bwselect(CCT) scaleregul(0)


**********************************************************************
*****    Fuzzy CCT bandwidth (no regularization by default)      *****
**********************************************************************
***** Bias-corrected Local linear *****
altfrdbwselect y v, c(0) fuzzy(treat) deriv(1) p(1) q(2) kernel(uniform) bwselect(CCT)
local fbw_h = e(h_F_CCT)
local fbw_b = e(b_F_CCT)
altrdrobust y v, c(0) fuzzy(treat) deriv(1) p(1) q(2) h(`fbw_h') b(`fbw_b') kernel(uniform)


***** Bias-corrected Local quadratic ****
altfrdbwselect y v, c(0) fuzzy(treat) deriv(1) p(2) q(3) kernel(uniform) bwselect(CCT)
local fbw_h = e(h_F_CCT)
local fbw_b = e(b_F_CCT)
altrdrobust y v, c(0) fuzzy(treat) deriv(1) p(2) q(3) h(`fbw_h') b(`fbw_b') kernel(uniform)


*********************************************************************
*****    Fuzzy IK bandwidth (no regularization by default)      *****
*********************************************************************
***** Bias-corrected Local linear *****
altfrdbwselect y v, c(0) fuzzy(treat) deriv(1) p(1) q(2) kernel(uniform) bwselect(IK)
local fbw_h = e(h_F_IK)
local fbw_b = e(b_F_IK)
altrdrobust y v, c(0) fuzzy(treat) deriv(1) p(1) q(2) h(`fbw_h') b(`fbw_b') kernel(uniform)


***** Bias-corrected Local quadratic ****
altfrdbwselect y v, c(0) fuzzy(treat) deriv(1) p(2) q(3) kernel(uniform) bwselect(IK)
local fbw_h = e(h_F_IK)
local fbw_b = e(b_F_IK)
altrdrobust y v, c(0) fuzzy(treat) deriv(1) p(2) q(3) h(`fbw_h') b(`fbw_b') kernel(uniform)
