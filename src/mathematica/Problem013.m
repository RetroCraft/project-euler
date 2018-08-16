(* ::Package:: *)

(* ::Section:: *)
(*Problem 13: Large sum*)


(* ::Text:: *)
(*Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.*)


(* ::Text:: *)
(*Mean timing: 1.75 ms *)


(* ::Input::Initialization:: *)
FromDigits@Take[IntegerDigits[Total@ReadList["data/Problem013.txt"]],10]


(* ::Text:: *)
(*Obfuscated length: 67 bytes*)


(* ::Code:: *)
(*FromDigits@Take[IntegerDigits@Tr@ReadList@"data/Problem013.txt",10]*)
