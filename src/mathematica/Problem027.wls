#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 27: Quadratic primes*)


(* ::Text:: *)
(*Euler discovered the remarkable quadratic formula: n^2+n+41*)
(**)
(*It turns out that the formula will produce 40 primes for the consecutive integer values 0 <= n <= 39. However, when n = 40, 40^2+40+41 = 40(40+1)+41 is divisible by 41, and certainly when n = 41, 41^2+41+41 is clearly divisible by 41.*)
(**)
(*The incredible formula n^2\[Minus]79n+1601 was discovered, which produces 80 primes for the consecutive values 0 <= n <= 79. The product of the coefficients, \[Minus]79 and 1601, is \[Minus]126479.*)
(**)
(*Considering quadratics of the form: n^2+an+b, where |a|<1000 and |b|<=1000 where |n| is the modulus/absolute value of n e.g. |11| = 11 and |\[Minus]4| = 4*)
(**)
(*Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.*)


(* ::Text:: *)
(*Mean timing: 1781.25 ms*)


(* ::Input::Initialization:: *)
primeLength[a_,b_]:=NestWhile[#+1&,0,PrimeQ[#^2+a #+b]&];
Print[Times@@First@MaximalBy[Join@@Table[{n, #}&/@Prime@Range@PrimePi@1000, {n, -1000,1000}], primeLength@@#&]]


(* ::Text:: *)
(*Obfuscated length: 133 bytes*)


(* ::Code:: *)
(*l[a_,b_]:=NestWhile[#+1&,0,PrimeQ[#^2+a #+b]&];1##&@@#&@@MaximalBy[Join@@Table[{n,#}&/@Prime@Range@PrimePi@1000,{n,-1000,1000}],l@@#&]*)
