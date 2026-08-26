:- consult('hechos.pl').

% Regla 1. determinar si un personaje sobrevive o no, es decir, 
% si tiene refugio, comida y agua

sobrevive(X) :-
    tiene(X, refugio),
    tiene(X, comida),
    tiene(X, agua).


% Regla 2. determinar si un personaje puede entrar a una zona,
% es decir, un adulto puede entrar aunque la zona sea peligrosa y
% un menor de edad solo puede entrar si la zona no tiene peligro alto.

puede_entrar(X, Zona) :-
    edad(X, Edad),
    nivel_peligro(Zona, _Momento, Nivel),
    ( Edad >= 18
    ; Nivel \== alto
    ).


% Regla 3. determinar si una zona es segura para un personaje, es decir,
% si el nivel de peligro de la zona no es alto o si no tiene enemigos

zona_segura(Zona, Momento) :-
    ( nivel_peligro(Zona, Momento, Nivel), Nivel \== alto
    ; no_tiene(Zona, enemigos)
    ).


% Regla 4. determinar si un mutante (por ejemplo Virginia) puede
% convertirse en aliado: su estado actual debe ser no_aliado, y
% el encuentro debe darse en una zona segura (los bunkeres) durante el día o la noche

puede_ser_aliado(Personaje) :-
    mutante(Personaje),
    estado(Personaje, no_aliado),
    ( zona_segura(los_bunkeres, dia)
    ; zona_segura(los_bunkeres, noche)
    ).