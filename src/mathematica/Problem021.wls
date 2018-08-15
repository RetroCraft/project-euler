#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 21: Amicable numbers*)


(* ::Text:: *)
(*Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).*)
(*If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each of a and b are called amicable numbers.*)
(**)
(*For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.*)
(**)
(*Evaluate the sum of all the amicable numbers under 10000.*)


(* ::Text:: *)
(*Mean timing: 22.9492 ms*)


(* ::Input::Initialization:: *)
properDivisorSum[x_]:=properDivisorSum[x]=DivisorSum[x,#&,#<x&];
Print@Total@Select[Range[1,10000],#!=properDivisorSum@#!=0&&#==properDivisorSum@properDivisorSum@#&]


(* ::Text:: *)
(*Obfuscated length: 65 bytes*)


(* ::Code:: *)
(*p=Tr@Divisors@#-#&;Tr@Select[Range[1,1*^4],#!=p@#!=0&&#==p@p@#&]*)
