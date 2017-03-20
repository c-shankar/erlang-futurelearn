-module(second).

-import(first,[square/1,mult/2]).

-export([hypotenuse/2,perimeter/2,area/2]).

hypotenuse(A,B) ->

    math:sqrt(square(A) + square(B)).

perimeter(A,B) ->

    A + B + hypotenuse(A,B).

area(A,B) ->

    mult(0.5,mult(A,B)).