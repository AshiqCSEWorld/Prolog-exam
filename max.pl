max_cal(X,Y,Max):-
    X>=Y, !, Max = X;
    Max = Y.

min_cal(X,Y,Min):-
    X < Y, !, Min = X;
    Min = Y.