% Dado un numero N, se debe sumar N con todos los numeros anteriores hasta llegar a 1.
sumar_con_anteriores(0, 0).
sumar_con_anteriores(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sumar_con_anteriores(N1, Sum1),
    Sum is Sum1 + N.