start :-
    write('Введите список через запятую в скобках [1,2,-3]. : '),
    read(List),
    count_max(List, 0, 0, Result),
    write('Результат: '), write(Result).

count_max([], _, Max, Max).

count_max([H|T], Current, Max, Res) :-
    H > 0, 
    NewCurrent is Current + 1,       
    (NewCurrent > Max -> NewMax = NewCurrent ; NewMax = Max), 
    count_max(T, NewCurrent, NewMax, Res).

count_max([H|T], _, Max, Res) :-
    H =< 0, 
    count_max(T, 0, Max, Res).       