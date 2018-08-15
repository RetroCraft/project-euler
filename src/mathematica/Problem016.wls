#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 16: Power digit sum*)


(* ::Text:: *)
(*2^15=32768 and the sum of its digits is 3+2+7+6+8 = 26.*)
(**)
(*What is the sum of the digits of the number 2^1000?*)


(* ::Text:: *)
(*Mean timing: 0.005 ms*)


(* ::Input::Initialization:: *)
Print@Total@IntegerDigits[2^1000]


(* ::Text:: *)
(*Obfuscated length: 24 bytes*)


(* ::Code:: *)
(*Tr@IntegerDigits[2^1000]*)
