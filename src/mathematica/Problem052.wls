#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 52: Permuted multiples*)


(* ::Text:: *)
(*It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.*)
(**)
(*Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.*)


(* ::Text:: *)
(*Mean timing: 1.34375 ms*)


(* ::Input::Initialization:: *)
Print@NestWhile[#+1&,1,!Equal@@Sort/@Table[IntegerDigits[n #],{n,6}]&]


(* ::Text:: *)
(*Obfuscated length: 63 bytes*)


(* ::Code:: *)
(*NestWhile[#+1&,1,!Equal@@Sort/@Table[IntegerDigits[n #],{n,6}]&]*)
