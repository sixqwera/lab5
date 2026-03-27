start :-
    write('Введите список через запятую в скобках [1,2,-3]. : '),
    read(List),
    countMax(List, 0, 0, Result),
    write('Результат: '), write(Result).

countMax([], _, Max, Max).

countMax([H|T], Current, Max, Res) :-
    H > 0, 
    NewCurrent is Current + 1,       
    (NewCurrent > Max -> NewMax = NewCurrent ; NewMax = Max), 
    countMax(T, NewCurrent, NewMax, Res).

countMax([H|T], _, Max, Res) :-
    H =< 0, 
    countMax(T, 0, Max, Res).       