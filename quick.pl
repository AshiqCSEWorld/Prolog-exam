quicksort([X | Xs], Ys):-
        partition(Xs, X, Left, Right),
        quicksort(Left, Ls),
        quicksort(Right, Rs),
        listappend(Ls, [X|Rs],Ys).
    quicksort([],[]).

partition([X | Xs], Y,[X | Ls], Rs):-
        X =< Y,
        partition(Xs, Y, Ls, Rs).

partition([X | Xs], Y, Ls, [X | Rs]):-
    X > Y, partition(Xs, Y, Ls, Rs).

partition([], _, [], []).

listappend([], Ys, Ys).
listappend([X | Xs], Ys, [X | Zs]):-
    listappend(Xs,Ys,Zs).
