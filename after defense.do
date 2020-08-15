* after defense

set more off ,permanently
* MACBOOK
use "/Users/scy/Dropbox/Fall2018/hhdata/edu.dta",clear
* SURFACE
use "C:\Users\scy_a\Dropbox\summer 2019\edu1.dta" ,clear

drop if earnings_h_usd>=1000 & earnings_h_usd<=1600
gen edu2=(edu)^2

sum ln_earnings_h_usd years_educ_act age tenure_ training certificate children urban if gender==0
sum ln_earnings_h_usd years_educ_act age tenure_ training certificate children urban if gender==1

************************************************************************ paper 1

******************************* regression
********* overall
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban i.country_ if gender==0
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban i.country_ if gender==1

est store c2

* quantiles
* change label
label variable years_educ_act "edu"
label variable age "age"
label variable tenure_ "tenure"
label variable training "training"
label variable certificate "certificate"
label variable children "children"

tab country_, gen(c)

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 , q(.1 .2 .3 .4 .5 .6 .7 .8 .9) ,if gender==0
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 , q(.1 .2 .3 .4 .5 .6 .7 .8 .9) ,if gender==1
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace

* by country

* country 1
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==1
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==1

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==1
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==1
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 2
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==2
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==2

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==2
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==2
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace




* country 3
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==3
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==3

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==3
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==3
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace




* country 4
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==4
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==4

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==4
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==4
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace







* country 5
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==5
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==5

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==5
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==5
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 6
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==6
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==6

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==6
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==6
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 7
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==7
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==7

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==7
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==7
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 8
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==8
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==8

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==8
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==8
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 9
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==9
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==9

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==9
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==9
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 10
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==10
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==10

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==10
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==10
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 11
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==11
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==11

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==11
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==11
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* country 12
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & country_==12
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & country_==12

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & country_==12
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & country_==12
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace




**************************************************** by region
set more off

use "/Users/scy/Dropbox/Fall2018/hhdata/edu.dta",clear
drop if earnings_h_usd>=1500
gen edu2=(edu)^2

gen region=.
* CENTRAL AMERICA
replace region=1 if country_==2 | country_==3
* AFRICA SUB-SAHARAN
replace region=2 if country_==5 | country_==6 
* EASTERN & SOUTHERN EUROPE
replace region=3 if country_==1 | country_==4 | country_==10 | country_==8
* S-E ASIA
replace region=4 if country_==7 | country_==11 | country_==12

******* no sri lanka?????????

* region 1 
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & region==1
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & region==1

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & region==1
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & region==1
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


* region 2
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & region==2
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & region==2

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & region==2
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & region==2
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* region 3
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & region==3
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & region==3

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & region==3
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & region==3
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



* region 4
* ols
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==0 & region==4
est store c1

reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban if gender==1 & region==4

est store c2

* quantiles

* male
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==0 & region==4
*grqreg years_educ_act age tenure_ training certificate children, cons  ci ols olsci
est store c3

*female
set seed 1001
sqreg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ training certificate children urban , q(.1 .2 .3 .4 .5 .6 .7 .8 .9), if gender==1 & region==4
*grqreg years_educ_act age tenure_ training certificate children,cons  ci ols olsci 
est store c4

esttab c1 c2 c3 c4 using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace




* deco at mean 
* dummy
tab country_, gen(c)

oaxaca ln_earnings_h_usd years_educ_act age tenure_ training certificate children urban c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12, by(gender) pool
est store ob
esttab ob using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace





* MM
* net install rqdeco, from("https://sites.google.com/site/blaisemelly/")

gen gender_=. 
replace gender_=0 if gender==1
replace gender_=1 if gender==0

rqdeco ln_earnings_h_usd years_educ_act age tenure_ training certificate children urban c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12, by(gender_) vce(b) 
est store c5
coefplot 









***************************************************************** paper 2 
*use "/Users/scy/Dropbox/Fall2018/hhdata/edu.dta",clear
* SURFACE
use "C:\Users\scy_a\Dropbox\summer 2019\edu1.dta" ,clear

drop if earnings_h_usd>=1000 & earnings_h_usd<=1600
drop if max_parent_educ==4
gen edu2=(edu)^2
gen trnure_2=(tenure_)^2
tab country_, gen(c)

sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==1
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==2
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==3
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==4
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==5
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==6
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==7
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==8
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==9
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==10
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==11
sum ln_earnings_h_usd max_parent_educ years_educ_act age tenure_ gender training pub_emp certificate has_spouse urban children interrupt if country_==12




* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ 
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt)
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 gender children certificate
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills  i.country_ (years_educ_act=interrupt), vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



**************male 
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_  if gender==0
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt) if gender==0
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if gender==0
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills  i.country_ (years_educ_act=interrupt) if gender==0, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



************** female
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_  if gender==1
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt) if gender==1
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if gender==1
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills  i.country_ (years_educ_act=interrupt) if gender==1, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*************************by country
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==1
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==1
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==1
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==1
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 2
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==2
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==2
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==2
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==2
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*********country 3
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==3
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==3
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==3
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==3
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 4
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==4
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==4
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==4
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==4
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 5
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==5
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==5
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==5
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==5
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 6
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==6
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==6
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==6
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==6
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 7
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==7
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==7
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==7
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==8
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 8
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==8
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==8
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==8
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==2
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 9
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==9
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==9
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==9
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==9
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 10
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==10
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==10
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==10
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==10
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 11
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==11
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==11
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==11
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==11
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*********country 12
drop phat mills
* OLS
reg ln_earnings_h_usd i.max_parent_educ years_educ_act edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==12
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==12
estimate store iv

* IV heckman
probit emp i.max_parent_educ age age2 children certificate if country_==12
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.max_parent_educ edu2 age age2 tenure_ i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==12
*, vce(bootstrap)
est store hkm
esttab ols iv hkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace





****************************** change the base hehe
gen par_edu=.
replace par_edu=0 if max_parent_educ==3
replace par_edu=1 if max_parent_educ==2
replace par_edu=2 if max_parent_educ==1
replace par_edu=3 if max_parent_educ==0

*** overall
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt)
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ mills (years_educ_act=interrupt)
*, vce(bootstrap)
est store ivhkm
esttab ols iv hkm ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


*** country 1
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==1
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==1
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==1
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==1
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 2
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==2
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==2
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==2
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==2
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 3
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==3
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==3
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==3
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==3
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 4
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==4
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==4
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==4
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==4
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 5
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==5
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=school_location) if country_==5
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==5
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=school_location) if country_==5
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 6
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==6
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==6
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==6
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==6
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 7
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==7
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==7
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==7
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==7
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 8
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==8
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=school_location) if country_==8
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==8
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=school_location) if country_==8
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 9
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==9
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==9
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==9
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==9
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 10
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==10
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==10
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==10
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==10
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 11
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==11
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==11
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==11
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==11
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



*** country 12
drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban if country_==12
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban (years_educ_act=interrupt) if country_==12
estimate store iv

* heckman
* heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
* estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate if country_==12
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban mills (years_educ_act=interrupt) if country_==12
*, vce(bootstrap)
est store ivhkm
esttab ols iv ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace

























*************************************************************************** paper 3
use "C:\Users\scy_a\Dropbox\round3\data\newdata.dta" 



* get shares
gen irgs=irrigate/landarea
gen uirgs=(farmland-irrigate)/landarea
gen other1=1-irgs-uirgs

gen crps=cropland/landarea
gen wuds=woodland/landarea
gen psts=pstld/landarea
gen other2=1-crps-wuds-psts

drop if irgs>1
drop if uirgs>1
drop if uirgs<0
drop if crps>1
drop if wuds>1
drop if psts>1
drop if other2<0

* subsidy rate
gen subrt=sub/ttpre

* get average value
gen aexp=expense/farmland
gen asub=sub/cropland
gen acrpv=cropvalue/cropland
gen antic=netincome/farmland
gen acashrent=cashrent/farmland
gen albexp=lbexpense/farmland
gen landv=ldvalue/farmland
gen afert=fertilizer/farmland
gen ache=chemical/farmland


sum irgs uirgs other1 crps wuds psts other2 asub antic acashrent albexp afert ache if year==2002
sum irgs uirgs other1 crps wuds psts other2 asub antic acashrent albexp afert ache if year==2007
sum irgs uirgs other1 crps wuds psts other2 asub antic acashrent albexp afert ache if year==2012
































*********************************************** useless
************* by parnetal edu

********* level 0
drop phat mills
* OLS
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ if max_parent_educ==0
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt) if max_parent_educ==0
estimate store iv

* heckman
heckman ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep, if max_parent_educ==0
estimate store hkm

* IV heckman
probit emp age age2 children certificate if max_parent_educ==0
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ mills (years_educ_act=interrupt) if max_parent_educ==0
*, vce(bootstrap)
est store ivhkm
esttab ols iv hkm ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace



********* level 1
drop phat mills
* OLS
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ if max_parent_educ==1
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt) if max_parent_educ==1
estimate store iv

* heckman
heckman ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep, if max_parent_educ==1
estimate store hkm

* IV heckman
probit emp age age2 children certificate if max_parent_educ==1
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ mills (years_educ_act=interrupt) if max_parent_educ==1
*, vce(bootstrap)
est store ivhkm
esttab ols iv hkm ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace




********* level 2
drop phat mills
* OLS
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ if max_parent_educ==2
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt) if max_parent_educ==2
estimate store iv

* heckman
heckman ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep, if max_parent_educ==2
estimate store hkm

* IV heckman
probit emp age age2 children certificate if max_parent_educ==2
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ mills (years_educ_act=interrupt) if max_parent_educ==2
*, vce(bootstrap)
est store ivhkm
esttab ols iv hkm ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace




******** level 3
drop phat mills
* OLS
reg ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ if max_parent_educ==3
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt) if max_parent_educ==3
estimate store iv

* heckman
heckman ln_earnings_h_usd years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep, if max_parent_educ==3
estimate store hkm

* IV heckman
probit emp age age2 children certificate if max_parent_educ==3
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ mills (years_educ_act=interrupt) if max_parent_educ==3
*, vce(bootstrap)
est store ivhkm
esttab ols iv hkm ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace


****************************** change the base hehe
gen par_edu=.
replace par_edu=0 if max_parent_educ==4
replace par_edu=1 if max_parent_educ==0
replace par_edu=2 if max_parent_educ==1
replace par_edu=3 if max_parent_educ==2
replace par_edu=4 if max_parent_educ==3


drop phat mills
* OLS
reg ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_
*, vce(cluster country_)
est store ols

* IV
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ (years_educ_act=interrupt)
estimate store iv

* heckman
heckman ln_earnings_h_usd i.par_edu years_educ_act edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ , select(emp age age2 children certificate ) twostep
estimate store hkm

* IV heckman
probit emp i.par_edu age age2 children certificate
predict phat, xb

* gen IMR=normalden(phat,0,1)/normal(phat) if y==1
* replace IMR=-normalden(phat,0,1)/normal(-phat) if y==0

* or
gen mills=normalden(phat)/normal(phat)
ivregress 2sls ln_earnings_h_usd i.par_edu edu2 age age2 tenure_ i.gender i.training i.pub_emp i.certificate i.has_spouse i.urban i.country_ mills (years_educ_act=interrupt)
*, vce(bootstrap)
est store ivhkm
esttab ols iv hkm ivhkm using test.csv, star(* 0.1 ** 0.05 *** 0.01) se replace








