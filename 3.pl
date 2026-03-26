start :-
    write('Введите универсальное множество (весь список), например [1,2,3,4,5]. : '),
    read(In),
    write('Введите подмножество (что нужно вычесть), например [3,4]. : '),
    read(Out),
    findIn(In, Out, Result),
    write('Дополнение множества: '), write(Result).

findIn([], _, []).

findIn([H|T], A, Result) :-
    member(H, A),           
    !,                     
    findIn(T, A, Result). 

findIn([H|T], A, [H|Result]) :-
    findIn(T, A, Result). 
