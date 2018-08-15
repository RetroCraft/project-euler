#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 48: Self powers*)


(* ::Text:: *)
(*The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.*)
(**)
(*Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.*)


(* ::Text:: *)
(*Mean timing: 2.34375 ms*)


(* ::Input::Initialization:: *)
Print@Mod[Total@Table[x^x,{x,1000}],1*^10]


(* ::Text:: *)
(*Obfuscated length: 32 bytes*)


(* ::Code:: *)
(*Tr@Table[x^x,{x,1*^3}]~Mod~1*^10*)
