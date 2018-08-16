(* ::Package:: *)

(* ::Section:: *)
(*Problem 4: Largest palindrome product*)


(* ::Text:: *)
(*A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.*)
(**)
(*Find the largest palindrome made from the product of two 3-digit numbers.*)


(* ::Text:: *)
(*Mean timing: 3062.5 ms*)


(* ::Input::Initialization:: *)
Max@Select[
	Times@@@Tuples[Range[100,999],2],
	PalindromeQ
]


(* ::Text:: *)
(*Obfuscated length: 55 bytes*)


(* ::Code:: *)
(*Max@Select[1##&@@@Tuples[Range[100,999],2],PalindromeQ]*)
