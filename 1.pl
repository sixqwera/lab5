start :-
    write('Введите число: '),
    read(Num),              
    reverse(Num, Result),
    write('Перевернутое число: '), write(Result).

reverse(Num, Rezult) :-
    rev(Num, 0, Rezult).

rev(0, Acc, Acc) :- !.
rev(N, Acc, Rez) :-
    N > 0,
    Digit is N mod 10,
    NewAcc is Acc * 10 + Digit,
    NewN is N // 10,
    rev(NewN, NewAcc, Rez).
