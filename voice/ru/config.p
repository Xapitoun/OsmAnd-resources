%%% !!! THIS IS GENERATED FILE !!! Modify ttsconfig.p
% for turbo-prolog
:- op('--', xfy, 500).
% for swi-prolog
:- op(500, xfy,'--').

version(0).
tts :- version(X), X > 99.
voice :- version(X), X < 99.

language(ru).
fest_language(russian).

% before each announcement (beep)
preamble - [].

string('left.ogg', 'поверните налево ').
string('left_sh.ogg', 'резко поверните налево ').
string('left_sl.ogg', 'плавно поверните налево  ').
string('right.ogg', 'поверните направо ').
string('right_sh.ogg', 'резко поверните направо ').
string('right_sl.ogg', 'плавно поверните направо  ').
string('right_keep.ogg', 'держитесь правее ').
string('left_keep.ogg', 'держитесь левее ').

string('attention.ogg', 'Внимание ').
string('make_uturn.ogg', 'Выполните разворот ').
string('after.ogg', 'Через ').
string('prepare_after.ogg', 'Приготовьте через ').
string('then.ogg', 'затем ').
string('make.ogg', 'Выполните ').
string('exit.ogg', 'съезд ').
string('roundabout.ogg', 'круг ').
string('go_ahead.ogg', 'Продолжайте движение прямо ').
string('go_ahead_m.ogg', 'Продолжайте движение ').
string('and_arrive_destination.ogg', 'и вы прибу!дете в пункт назначения ').
string('and_arrive_intermediate.ogg', 'и вы прибу!дете в промежуточный пункт ').
string('reached_intermediate.ogg', 'вы прибыли в промежуточный пункт').
string('reached_destination.ogg','вы прибыли в пункт назначения ').
string('route_is.ogg', 'Маршрут составляет ').
string('route_calculate.ogg', 'маршрут пересчитывается, расстояние ').
string('location_lost.ogg', 'ДЖИПИИЭС потерян сигнал ').

string('1th.ogg', 'первый ').
string('2th.ogg', 'второй ').
string('3th.ogg', 'третий ').
string('4th.ogg', 'четвертый ').
string('5th.ogg', 'пятый ').
string('6th.ogg', 'шестой ').
string('7th.ogg', 'седьмой ').
string('8th.ogg', 'восьмой ').
string('9th.ogg', 'девятый ').
string('10th.ogg', 'десятый ').
string('11th.ogg', 'одиннадцатый ').
string('12th.ogg', 'двенадцатый ').
string('13th.ogg', 'тринадцатый ').
string('14th.ogg', 'четырнадцатый ').
string('15th.ogg', 'пятнадцатый ').
string('16th.ogg', 'шестнадцатый ').
string('17th.ogg', 'семнадцатый ').

string('on.ogg', 'на ').
string('off_road.ogg', 'Вы отклонились от маршрута ').
string('attention.ogg', 'Внимание ').
string('exceed_limit.ogg', 'Вы превысили допустимую скорость ').

string('metrov.ogg', 'метров ').
string('kilometr.ogg', 'километр ').
string('kilometra.ogg', 'kilometra ').
string('kilometrov.ogg', 'километров ').
string('around_1_kilometer.ogg', 'около одного километра ').
string('around.ogg', 'около ').


%% TURNS 
turn('left', ['left.ogg']).
turn('left_sh', ['left_sh.ogg']).
turn('left_sl', ['left_sl.ogg']).
turn('right', ['right.ogg']).
turn('right_sh', ['right_sh.ogg']).
turn('right_sl', ['right_sl.ogg']).
turn('right_keep', ['right_keep.ogg']).
turn('left_keep', ['left_keep.ogg']).

prepare_turn(Turn, Dist) -- ['prepare_after.ogg', D, ' ', M] :- distance(Dist) -- D, turn(Turn, M).
turn(Turn, Dist) -- ['after.ogg', D, M] :- distance(Dist) -- D, turn(Turn, M).
turn(Turn) -- M :- turn(Turn, M).

prepare_make_ut(Dist) -- ['after.ogg', D, ' make_uturn.ogg'] :- distance(Dist) -- D.
make_ut(Dist) --  ['after.ogg', D, 'make_uturn.ogg'] :- distance(Dist) -- D.
make_ut -- ['make_uturn.ogg'].
make_ut_wp -- ['make_uturn.ogg'].

prepare_roundabout(Dist) -- ['prepare_after.ogg', D, 'roundabout.ogg'] :- distance(Dist) -- D.
roundabout(Dist, _Angle, Exit) -- ['after.ogg', D, 'roundabout.ogg', 'make.ogg', E, 'exit.ogg'] :- distance(Dist) -- D, nth(Exit, E).
roundabout(_Angle, Exit) -- ['make.ogg', E, 'exit.ogg'] :- nth(Exit, E).

go_ahead -- ['go_ahead.ogg'].
go_ahead(Dist) -- ['go_ahead_m.ogg', D]:- distance(Dist) -- D.

and_arrive_destination -- ['and_arrive_destination.ogg'].
and_arrive_intermediate -- ['and_arrive_intermediate.ogg'].
reached_intermediate -- ['reached_intermediate.ogg'].
reached_destination -- ['reached_destination.ogg'].

then -- ['then.ogg'].
bear_right -- ['right_keep.ogg'].
bear_left -- ['left_keep.ogg'].

route_new_calc(Dist) -- ['route_is.ogg', D] :- distance(Dist) -- D.
route_recalc(Dist) -- ['route_calculate.ogg', D] :- distance(Dist) -- D.

location_lost -- ['location_lost.ogg'].


%% 
nth(1, '1th.ogg').
nth(2, '2th.ogg').
nth(3, '3th.ogg').
nth(4, '4th.ogg').
nth(5, '5th.ogg').
nth(6, '6th.ogg').
nth(7, '7th.ogg').
nth(8, '8th.ogg').
nth(9, '9th.ogg').
nth(10, '10th.ogg').
nth(11, '11th.ogg').
nth(12, '12th.ogg').
nth(13, '13th.ogg').
nth(14, '14th.ogg').
nth(15, '15th.ogg').




distance(Dist) -- [ X, 'metrov.ogg'] :- Dist < 100, D is round(Dist/10.0)*10, dist(D, X).
distance(Dist) -- [ X, 'metrov.ogg'] :- Dist < 1000, D is round(2*Dist/100.0)*50, dist(D, X).
distance(Dist) -- ['around_1_kilometer.ogg'] :- Dist < 1500.
distance(Dist) -- ['around.ogg', X, Km] :- Dist < 10000, D is round(Dist/1000.0), dist(D, X), plural_km(D, Km).

plural_km(D, 'kilometr.ogg') :- 1 is D mod 10.
plural_km(D, 'kilometra.ogg') :- Mod is D mod 10, Mod < 5,  Mod > 1.
plural_km(_D, 'kilometrov.ogg').

distance(Dist) -- [ X, 'kilometr.ogg'] :- D is round(Dist/1000.0), dist(D, X).


on_street -- ['on.ogg', X] :- next_street(X).
off_route -- ['off_road.ogg'].
attention -- ['attention.ogg'].
speed_alarm -- ['exceed_limit.ogg'].


%% resolve command main method
%% if you are familar with Prolog you can input specific to the whole mechanism,
%% by adding exception cases.
flatten(X, Y) :- flatten(X, [], Y), !.
flatten([], Acc, Acc).
flatten([X|Y], Acc, Res):- flatten(Y, Acc, R), flatten(X, R, Res).
flatten(X, Acc, [X|Acc]) :- version(J), J < 100, !.
flatten(X, Acc, [Y|Acc]) :- string(X, Y), !.
flatten(X, Acc, [X|Acc]).

resolve(X, Y) :- resolve_impl(X,Z), flatten(Z, Y).
resolve_impl([],[]).
resolve_impl([X|Rest], List) :- resolve_impl(Rest, Tail), ((X -- L) -> append(L, Tail, List); List = Tail).

%%% distance measure
string('1.ogg', '1').
string('2.ogg', '2').
string('3.ogg', '3').
string('4.ogg', '4').
string('5.ogg', '5').
string('6.ogg', '6').
string('7.ogg', '7').
string('8.ogg', '8').
string('9.ogg', '9').
string('11.ogg', '11').
string('12.ogg', '12').
string('13.ogg', '13').
string('14.ogg', '14').
string('15.ogg', '15').
string('16.ogg', '16').
string('17.ogg', '17').
string('18.ogg', '18').
string('19.ogg', '19').
string('10.ogg', '10').
string('20.ogg', '20').
string('30.ogg', '30').
string('40.ogg', '40').
string('50.ogg', '50').
string('60.ogg', '60').
string('70.ogg', '70').
string('80.ogg', '80').
string('90.ogg', '90').
string('100.ogg', '100').
string('200.ogg', '200').
string('300.ogg', '300').
string('400.ogg', '400').
string('500.ogg', '500').
string('600.ogg', '600').
string('700.ogg', '700').
string('800.ogg', '800').
string('900.ogg', '900').
string('1000.ogg', '1000').
string('2000.ogg', '2000').
string('3000.ogg', '3000').
string('4000.ogg', '4000').
string('5000.ogg', '5000').
string('6000.ogg', '6000').
string('7000.ogg', '7000').
string('8000.ogg', '8000').
string('9000.ogg', '9000').

dist(X, Y) :- tts, !, num_atom(X, Y).

dist(0, []) :- !.
dist(1, ['1.ogg']) :- !.
dist(2, ['2.ogg']) :- !.
dist(3, ['3.ogg']) :- !.
dist(4, ['4.ogg']) :- !.
dist(5, ['5.ogg']) :- !.
dist(6, ['6.ogg']) :- !.
dist(7, ['7.ogg']) :- !.
dist(8, ['8.ogg']) :- !.
dist(9, ['9.ogg']) :- !.
dist(10, ['10.ogg']) :- !.
dist(11, ['11.ogg']) :- !.
dist(12, ['12.ogg']) :- !.
dist(13, ['13.ogg']) :- !.
dist(14, ['14.ogg']) :- !.
dist(15, ['15.ogg']) :- !.
dist(16, ['16.ogg']) :- !.
dist(17, ['17.ogg']) :- !.
dist(18, ['18.ogg']) :- !.
dist(19, ['19.ogg']) :- !.
dist(D, ['20.ogg'|L]) :-  D < 30, Ts is D - 20, !, dist(Ts, L).
dist(D, ['30.ogg'|L]) :-  D < 40, Ts is D - 30, !, dist(Ts, L).
dist(D, ['40.ogg'|L]) :-  D < 50, Ts is D - 40, !, dist(Ts, L).
dist(D, ['50.ogg'|L]) :-  D < 60, Ts is D - 50, !, dist(Ts, L).
dist(D, ['60.ogg'|L]) :-  D < 70, Ts is D - 60, !, dist(Ts, L).
dist(D, ['70.ogg'|L]) :-  D < 80, Ts is D - 70, !, dist(Ts, L).
dist(D, ['80.ogg'|L]) :-  D < 90, Ts is D - 80, !, dist(Ts, L).
dist(D, ['90.ogg'|L]) :-  D < 100, Ts is D - 90, !, dist(Ts, L).
dist(D, ['100.ogg'|L]) :-  D < 200, Ts is D - 100, !, dist(Ts, L).
dist(D, ['200.ogg'|L]) :-  D < 300, Ts is D - 200, !, dist(Ts, L).
dist(D, ['300.ogg'|L]) :-  D < 400, Ts is D - 300, !, dist(Ts, L).
dist(D, ['400.ogg'|L]) :-  D < 500, Ts is D - 400, !, dist(Ts, L).
dist(D, ['500.ogg'|L]) :-  D < 600, Ts is D - 500, !, dist(Ts, L).
dist(D, ['600.ogg'|L]) :-  D < 700, Ts is D - 600, !, dist(Ts, L).
dist(D, ['700.ogg'|L]) :-  D < 800, Ts is D - 700, !, dist(Ts, L).
dist(D, ['800.ogg'|L]) :-  D < 900, Ts is D - 800, !, dist(Ts, L).
dist(D, ['900.ogg'|L]) :-  D < 1000, Ts is D - 900, !, dist(Ts, L).
dist(D, ['1000.ogg'|L]):- Ts is D - 1000, !, dist(Ts, L).