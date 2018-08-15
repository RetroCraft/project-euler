#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 36: Double-base palindromes*)


(* ::Text:: *)
(*The decimal number, 585 = 1001001001 (binary), is palindromic in both bases.*)
(**)
(*Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.*)
(**)
(*(Please note that the palindromic number, in either base, may not include leading zeros.)*)


(* ::Text:: *)
(*Mean timing: 4218.75 ms*)


(* ::Input::Initialization:: *)
Print@Total@Select[Range[1000000], PalindromeQ[#]\[And]PalindromeQ[IntegerString[#,2]]&]


(* ::Text:: *)
(*Obfuscated length: 62 bytes*)


(* ::Code:: *)
(*Tr@Select[Range[1*^6],PalindromeQ[#]\[And]IntegerReverse[#,2]==#&]*)
