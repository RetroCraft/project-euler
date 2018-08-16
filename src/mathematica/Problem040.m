(* ::Package:: *)

(* ::Section:: *)
(*Problem 40: Champernowne's constant*)


(* ::Text:: *)
(*An irrational decimal fraction is created by concatenating the positive integers:*)
(**)
(*0.123456789101112131415161718192021...*)
(**)
(*It can be seen that the 12th digit of the fractional part is 1.*)
(**)
(*If dn represents the nth digit of the fractional part, find the value of the following expression.*)
(**)
(*d1 * d10 * d100 * d1000 * d10000 * d100000 * d1000000*)


(* ::Text:: *)
(*Mean timing: 1421.88 ms*)


(* ::Input::Initialization:: *)
Times@@FromDigits/@(StringTake[StringJoin@@ToString/@Range@200000,{#}]&/@Table[10^x,{x,0,6}])


(* ::Text:: *)
(*Obfuscated length: 90 bytes*)


(* ::Code:: *)
(*1##&@@FromDigits/@(StringTake[StringJoin@@ToString/@Range@2*^5,{#}]&/@Table[10^x,{x,0,6}])*)
