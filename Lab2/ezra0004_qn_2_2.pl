reigning(queen_elizabeth).
older(queen_elizabeth, prince_charles).
older(prince_charles, princess_ann).
older(princess_ann, prince_andrew).
older(prince_andrew, prince_edward).

successor(X,Y) :- older(Y,X).