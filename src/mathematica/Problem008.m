(* ::Package:: *)

(* ::Section:: *)
(*Problem 8: Largest product in a series*)


(* ::Text:: *)
(*The four adjacent digits in the 1000-digit number that have the greatest product are 9 * 9 * 8 * 9 = 5832.*)
(**)
(*[...]*)
(**)
(*Find the thirteen adjacent digits in the 1000-digit number that have the greatest product. What is the value of this product?*)


(* ::Text:: *)
(*Mean timing: 2.59375 ms*)


(* ::Input::Initialization:: *)
Print@Max[
	Times@@@Partition[
		IntegerDigits@ToExpression@ReadString["data/Problem008.txt"],
		13,1
	]
]


(* ::Text:: *)
(*Obfuscated length: 85 bytes*)


(* ::Code:: *)
(*Max[1##&@@@Partition[IntegerDigits@ToExpression@ReadString@"data/Problem008.txt",13,1]]*)
