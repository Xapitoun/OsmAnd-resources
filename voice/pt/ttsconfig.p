﻿% for turbo-prolog
:- op('--', xfy, 500).
% for swi-prolog
:- op(500, xfy,'--').

version(102).
tts :- version(X), X > 99.
voice :- version(X), X < 99.

language('pt').
fest_language('cmu_us_awb_arctic_clunits').

% IMPLEMENTED (X) or MISSING ( ) FEATURES:
% (X) new Version 1.5 format
% (X) route calculated prompts, left/right, u-turns, roundabouts, straight/follow
% (X) arrival
% (X) other prompts: attention (without Type implementation), location lost, off_route, exceed speed limit
% (N/A) special grammar: onto_street / on_street / to_street
% (N/A) special grammar: nominative/dativ for distance measure
% (X) special grammar: imperative/infinitive distincion for turns
% (X) distance measure: meters / feet / yard support
% (X) Street name announcement (suppress in prepare_roundabout)
% (X) Name announcement for destination / intermediate / GPX waypoint arrival
% (X) Time announcement for new and recalculated route (for recalculated suppress in appMode=car)
% ( ) word order checked


% ROUTE CALCULATED
string('route_is.ogg', 'A rota possui ').
string('route_calculate.ogg', 'Rota recalculada. ').
string('distance.ogg', ' Distância é de ').

% LEFT/RIGHT
string('left_imp.ogg', 'virar à esquerda ').
string('left_sh_imp.ogg', 'virar acentuadamente à esquerda ').
string('left_sl_imp.ogg', 'virar ligeiramente à esquerda ').
string('right_imp.ogg', 'virar à direita ').
string('right_sh_imp.ogg', 'virar acentuadamente à direita ').
string('right_sl_imp.ogg', 'virar ligeiramente à direita ').
string('left_keep_imp.ogg', 'manter-se à esquerda').
string('right_keep_imp.ogg', 'manter-se à direita').
string('left_bear_imp.ogg', 'mantenha-se à esquerda ').
string('right_bear_imp.ogg', 'mantenha-se à direita ').

string('left.ogg', 'vire à esquerda ').
string('left_sh.ogg', 'vire acentuadamente à esquerda ').
string('left_sl.ogg', 'vire ligeiramente à esquerda ').
string('right.ogg', 'vire à direita ').
string('right_sh.ogg', 'vire acentuadamente à direita ').
string('right_sl.ogg', 'vire ligeiramente à direita ').
string('left_keep.ogg', 'mantenha-se à esquerda'').
string('right_keep.ogg', 'mantenha-se à direita').
string('left_bear.ogg', 'mantenha-se à esquerda ').
string('right_bear.ogg', 'mantenha-se à direita ').

% U-TURNS
string('prepare_uturn.ogg', 'Prepare-se para retornar após ').
string('make_uturn.ogg', 'faça um retorno ').
string('make_uturn_wp.ogg', 'Retorne assim que possível ').
string('after.ogg', 'após ').
string('prepare.ogg', 'Prepare-se para ').
string('then.ogg', 'então ').
string('and.ogg', 'e ').

% ROUNDABOUTS
string('prepare_roundabout.ogg', 'Prepare-se para entrar na rotatória após ').
string('roundabout.ogg', ' entre na rotatória e pegue a ').
string('take.ogg', 'pegue a ').
string('exit.ogg', 'saída ').

string('1st.ogg', 'primeira ').
string('2nd.ogg', 'segunda ').
string('3rd.ogg', 'terceira ').
string('4th.ogg', 'quarta ').
string('5th.ogg', 'quinta ').
string('6th.ogg', 'sexta ').
string('7th.ogg', 'sétima ').
string('8th.ogg', 'oitava ').
string('9th.ogg', 'nona ').
string('10th.ogg', 'décima ').
string('11th.ogg', 'décima primeira ').
string('12th.ogg', 'décima segunda ').
string('13th.ogg', 'décima terceira ').
string('14th.ogg', 'décima quarta ').
string('15th.ogg', 'décima quinta ').
string('16th.ogg', 'décima sexta ').
string('17th.ogg', 'décima sétima ').

% STRAIGHT/FOLLOW
string('go_ahead.ogg', 'Siga em frente ').
string('follow.ogg', 'Siga o caminho por ').

% ARRIVE
string('and_arrive_destination.ogg', 'e chegou ao seu destino ').
string('reached_destination.ogg','você chegou ao seu destino ').
string('and_arrive_intermediate.ogg', 'e chegou ao seu ponto de passagem ').
string('reached_intermediate.ogg', 'você chegou ao seu ponto de passagem ').
string('and_arrive_waypoint.ogg', 'e chegou ao seu ponto de GPX ').
string('reached_waypoint.ogg', 'você chegou ao seu ponto de GPX ').

% OTHER PROMPTS
string('attention.ogg', 'atenção, ').
string('location_lost.ogg', 'sem sinal g p s ').
string('off_route.ogg', 'você se desviou da rota para ').
string('exceed_limit.ogg', 'você estiver excedendo o limite de velocidade ').

% STREET NAME GRAMMAR
string('onto.ogg', 'para ').

% DISTANCE UNIT SUPPORT
string('meters.ogg', 'metros ').
string('around_1_kilometer.ogg', 'aproximadamente um quilômetro ').
string('around.ogg', 'aproximadamente ').
string('kilometers.ogg', 'quilômetros ').

string('feet.ogg', 'pés ').
string('1_tenth_of_a_mile.ogg', 'one tenth of a mile ').
string('tenths_of_a_mile.ogg', 'um décimo de uma milha ').
string('around_1_mile.ogg', 'cerca de 1 milha ').
string('miles.ogg', 'milhas ').

string('yards.ogg', 'jardas ').

% TIME SUPPORT
string('time.ogg', 'tempo é ').
string('1_hour.ogg', 'uma hora ').
string('hours.ogg', 'horas ').
string('less_a_minute.ogg', 'menos de um minuto ').
string('minutes.ogg', 'minutos ').


%% COMMAND BUILDING / WORD ORDER
turn_imp('left', ['left_imp.ogg']).
turn_imp('left_sh', ['left_sh_imp.ogg']).
turn_imp('left_sl', ['left_sl_imp.ogg']).
turn_imp('right', ['right_imp.ogg']).
turn_imp('right_sh', ['right_sh_imp.ogg']).
turn_imp('right_sl', ['right_sl_imp.ogg']).
turn_imp('left_keep', ['left_keep_imp.ogg']).
turn_imp('right_keep', ['right_keep_imp.ogg']).
bear_left(_Street) -- ['left_bear_imp.ogg'].
bear_right(_Street) -- ['right_bear_imp.ogg'].

turn('left', ['left.ogg']).
turn('left_sh', ['left_sh.ogg']).
turn('left_sl', ['left_sl.ogg']).
turn('right', ['right.ogg']).
turn('right_sh', ['right_sh.ogg']).
turn('right_sl', ['right_sl.ogg']).
turn('left_keep', ['left_keep.ogg']).
turn('right_keep', ['right_keep.ogg']).

onto_street('', []).
onto_street(Street, ['onto.ogg', Street]) :- tts.
onto_street(_Street, []) :- not(tts).

prepare_turn(Turn, Dist, Street) -- ['prepare.ogg', M, 'after.ogg', D | Sgen] :- distance(Dist) -- D, turn_imp(Turn, M), onto_street(Street, Sgen).
turn(Turn, Dist, Street) -- ['after.ogg', D, M | Sgen] :- distance(Dist) -- D, turn(Turn, M), onto_street(Street, Sgen).
turn(Turn, Street) -- [M | Sgen] :- turn(Turn, M), onto_street(Street, Sgen).

prepare_make_ut(Dist, Street) -- ['prepare_uturn.ogg', D | Sgen] :- distance(Dist) -- D, onto_street(Street, Sgen).
make_ut(Dist, Street) --  ['after.ogg', D, 'make_uturn.ogg' | Sgen] :- distance(Dist) -- D, onto_street(Street, Sgen).
make_ut(Street) -- ['make_uturn.ogg' | Sgen] :- onto_street(Street, Sgen).
make_ut_wp -- ['make_uturn_wp.ogg'].

prepare_roundabout(Dist, _Exit, _Street) -- ['prepare_roundabout.ogg', D] :- distance(Dist) -- D.
roundabout(Dist, _Angle, Exit, Street) -- ['after.ogg', D, 'roundabout.ogg', 'and.ogg', 'take.ogg', E, 'exit.ogg' | Sgen] :- distance(Dist) -- D, nth(Exit, E), onto_street(Street, Sgen).
roundabout(_Angle, Exit, Street) -- ['take.ogg', E, 'exit.ogg' | Sgen] :- nth(Exit, E), onto_street(Street, Sgen).

go_ahead -- ['go_ahead.ogg'].
go_ahead(Dist, Street) -- ['follow.ogg', D | Sgen] :- distance(Dist) -- D, onto_street(Street, Sgen).

then -- ['then.ogg'].
name(D, [D]) :- tts.
name(_D, []) :- not(tts).
and_arrive_destination(D) -- ['and_arrive_destination.ogg'|Ds] :- name(D, Ds).
reached_destination(D) -- ['reached_destination.ogg'|Ds] :- name(D, Ds).
and_arrive_intermediate(D) -- ['and_arrive_intermediate.ogg'|Ds] :- name(D, Ds).
reached_intermediate(D) -- ['reached_intermediate.ogg'|Ds] :- name(D, Ds).
and_arrive_waypoint(D) -- ['and_arrive_waypoint.ogg'|Ds] :- name(D, Ds).
reached_waypoint(D) -- ['reached_waypoint.ogg'|Ds] :- name(D, Ds).

route_new_calc(Dist, Time) -- ['route_is.ogg', D, 'time.ogg', T] :- distance(Dist) -- D, time(Time) -- T.
route_recalc(Dist, Time) -- ['route_calculate.ogg'] :- appMode('car').
route_recalc(Dist, Time) -- ['route_calculate.ogg', 'distance.ogg', D, 'time.ogg', T] :- distance(Dist) -- D, time(Time) -- T.

location_lost -- ['location_lost.ogg'].
off_route(Dist) -- ['off_route.ogg', D] :- distance(Dist) -- D.
attention(_Type) -- ['attention.ogg'].
speed_alarm -- ['exceed_limit.ogg'].


%% 
nth(1, '1st.ogg').
nth(2, '2nd.ogg').
nth(3, '3rd.ogg').
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


%% command main method
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
resolve_impl([X|Rest], List) :- resolve_impl(Rest, Tail), ('--'(X, L) -> append(L, Tail, List); List = Tail).


% handling alternatives
[X|_Y] -- T :- (X -- T),!.
[_X|Y] -- T :- (Y -- T).


pnumber(X, Y) :- tts, !, num_atom(X, Y).
pnumber(X, Ogg) :- num_atom(X, A), atom_concat(A, '.ogg', Ogg).
% time measure
hours(S, []) :- S < 60.
hours(S, ['1_hour.ogg']) :- S < 120, H is S div 60, pnumber(H, Ogg).
hours(S, [Ogg, 'hours.ogg']) :- H is S div 60, pnumber(H, Ogg).
time(Sec) -- ['less_a_minute.ogg'] :- Sec < 60.
time(Sec) -- [H, Ogg, 'minutes.ogg'] :- S is round(Sec/300.0) * 5, hours(S, H), St is S mod 60, pnumber(St, Ogg).


%%% distance measure
distance(Dist) -- D :- measure('km-m'), distance_km(Dist) -- D.
distance(Dist) -- D :- measure('mi-f'), distance_mi_f(Dist) -- D.
distance(Dist) -- D :- measure('mi-y'), distance_mi_y(Dist) -- D.

%%% distance measure km/m
distance_km(Dist) -- [ X, 'meters.ogg']                  :- Dist < 100,   D is round(Dist/10.0)*10,           dist(D, X).
distance_km(Dist) -- [ X, 'meters.ogg']                  :- Dist < 1000,  D is round(2*Dist/100.0)*50,        dist(D, X).
distance_km(Dist) -- ['around_1_kilometer.ogg']          :- Dist < 1500.
distance_km(Dist) -- ['around.ogg', X, 'kilometers.ogg'] :- Dist < 10000, D is round(Dist/1000.0),            dist(D, X).
distance_km(Dist) -- [ X, 'kilometers.ogg']              :-               D is round(Dist/1000.0),            dist(D, X).

%%% distance measure mi/f
distance_mi_f(Dist) -- [ X, 'feet.ogg']                  :- Dist < 160,   D is round(2*Dist/100.0/0.3048)*50, dist(D, X).
distance_mi_f(Dist) -- ['1_tenth_of_a_mile.ogg']         :- Dist < 241.
distance_mi_f(Dist) -- [ X, 'tenths_of_a_mile.ogg']      :- Dist < 1529,  D is round(Dist/161.0),             dist(D, X).
distance_mi_f(Dist) -- ['around_1_mile.ogg']             :- Dist < 2414.
distance_mi_f(Dist) -- ['around.ogg', X, 'miles.ogg']    :- Dist < 16093, D is round(Dist/1609.0),            dist(D, X).
distance_mi_f(Dist) -- [ X, 'miles.ogg']                 :-               D is round(Dist/1609.0),            dist(D, X).

%%% distance measure mi/y
distance_mi_y(Dist) -- [ X, 'yards.ogg']                 :- Dist < 241,   D is round(Dist/10.0/0.9144)*10,    dist(D, X).
distance_mi_y(Dist) -- [ X, 'yards.ogg']                 :- Dist < 1300,  D is round(2*Dist/100.0/0.9144)*50, dist(D, X).
distance_mi_y(Dist) -- ['around_1_mile.ogg']             :- Dist < 2414.
distance_mi_y(Dist) -- ['around.ogg', X, 'miles.ogg']    :- Dist < 16093, D is round(Dist/1609.0),            dist(D, X).
distance_mi_y(Dist) -- [ X, 'miles.ogg']                 :-               D is round(Dist/1609.0),            dist(D, X).


interval(St, St, End, _Step) :- St =< End.
interval(T, St, End, Step) :- interval(Init, St, End, Step), T is Init + Step, (T =< End -> true; !, fail).

interval(X, St, End) :- interval(X, St, End, 1).

string(Ogg, A) :- voice_generation, interval(X, 1, 19), atom_number(A, X), atom_concat(A, '.ogg', Ogg).
string(Ogg, A) :- voice_generation, interval(X, 20, 95, 5), atom_number(A, X), atom_concat(A, '.ogg', Ogg).
string(Ogg, A) :- voice_generation, interval(X, 100, 900, 50), atom_number(A, X), atom_concat(A, '.ogg', Ogg).
string(Ogg, A) :- voice_generation, interval(X, 1000, 9000, 1000), atom_number(A, X), atom_concat(A, '.ogg', Ogg).

dist(X, Y) :- tts, !, num_atom(X, Y).

dist(0, []) :- !.
dist(X, [Ogg]) :- X < 20, !, pnumber(X, Ogg).
dist(X, [Ogg]) :- X < 1000, 0 is X mod 50, !, num_atom(X, A), atom_concat(A, '.ogg', Ogg).
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