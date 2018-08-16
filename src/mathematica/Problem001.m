(* ::Package:: *)

(* ::Section:: *)
(*Problem 1: Multiples of 3 and 5*)


(* ::Text:: *)
(*If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.*)
(*Find the sum of all the multiples of 3 or 5 below 1000.*)


(* ::Text:: *)
(*Mean timing: 0.734375 ms *)


(* ::Input::Initialization:: *)
Print@Total@Select[
	Range[1000],Divisible[#, 3]\[Or]Divisible[#, 5]&
]


(* ::Text:: *)
(*Obfuscated length: 35 bytes*)


(* ::Code:: *)
(*Tr@Select[Range@1*^3,3\[Divides]#||5\[Divides]#&]*)
