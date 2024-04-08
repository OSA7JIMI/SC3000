tech(galactica-s3).
competitor(sumsum,appy).
developed(sumsum, galactica-s3).
stole(stevey, galactica-s3).
boss(stevey, appy).

business(X) :- tech(X).
rival(COYA, COYB) :- competitor(COYA, COYB); competitor(COYB, COYA).
unethical(BOSS) :- boss(BOSS,ACOY), 
		stole(BOSS, BUS),
		business(BUS),
		developed(BCOY, BUS),
		rival(ACOY, BCOY).
