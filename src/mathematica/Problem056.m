(* ::Package:: *)

(* ::Section:: *)
(*Problem 56: Powerful digit sum*)


(* ::Text:: *)
(*A googol (10^100) is a massive number: one followed by one-hundred zeros; 100^100 is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.*)
(**)
(*Considering natural numbers of the form, a^b, where a, b < 100, what is the maximum digital sum?*)


(* ::Text:: *)
(*Mean timing: 27.3438 ms*)


(* ::Input::Initialization:: *)
Print@Max[Total/@IntegerDigits@Flatten@Table[a^b,{a,2,99},{b,2,99}]]


(* ::Text:: *)
(*Obfuscated length: 58 bytes*)


(* ::Code:: *)
(*Max[Tr/@IntegerDigits[Join@@Table[a^b,{a,2,99},{b,2,99}]]]*)
