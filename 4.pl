start :-
    solve(Brand, Color),
    write('Автомобиль: '), write(Brand),
    write(', Цвет: '), write(Color),
    nl.

car_brand(buick).
car_brand(chrysler).
car_brand(ford).

car_color(blue).
car_color(black).

xor(A, B) :- (A, \+ B) ; (\+ A, B).
	
solve(Brand, Color) :-
    
    car_brand(Brand),
    car_color(Color),

    xor(Brand = buick, Color = blue),

    xor(Brand = chrysler, Color = black),

    xor(Brand = ford, Color \= blue).

