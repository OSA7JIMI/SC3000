reigning(queen_elizabeth).
male(prince_charles).
female(princess_ann).
male(prince_andrew).
male(prince_edward).
youngest_male(prince_edward).

older(queen_elizabeth, prince_charles).
older(prince_charles, princess_ann).
older(princess_ann, prince_andrew).
older(prince_andrew, prince_edward).

male_line(X,Y) :- male(X), ((male(Y); reigning(Y)),older(Y,X); skip_girl(X,Y)).
skip_girl(X,Y) :- older(Z,X), (female(Z), older(Y,Z), male(Y)).
transition(X,Y) :- female(X), youngest_male(Y).
female_line(X,Y) :- female(X), female(Y), older(Y,X).

successor(X,Y) :- male_line(X,Y); transition(X,Y); female_line(X,Y).