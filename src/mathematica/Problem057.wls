#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 57: Square root convergents*)


(* ::Text:: *)
(*It is possible to show that the square root of two can be expressed as an infinite continued fraction.*)
(**)
(*\[Sqrt] 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...*)
(**)
(*By expanding this for the first four iterations, we get:*)
(**)
(*1 + 1/2 = 3/2 = 1.5*)
(*1 + 1/(2 + 1/2) = 7/5 = 1.4*)
(*1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...*)
(*1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...*)
(**)
(*The next three expansions are 99/70, 239/169, and 577/408, but the eighth expansion, 1393/985, is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.*)
(**)
(*In the first one-thousand expansions, how many fractions contain a numerator with more digits than denominator?*)


(* ::Text:: *)
(*Mean timing: 281.25 ms*)


(* ::Input::Initialization:: *)
Length@Select[Table[FromContinuedFraction@ContinuedFraction[Sqrt[2],x],{x,1000}],IntegerLength@Numerator@#>IntegerLength@Denominator@#&]


(* ::Text:: *)
(*Obfuscated length: 130 bytes*)


(* ::Code:: *)
(*Length@Select[FromContinuedFraction@ContinuedFraction[\[Sqrt]2,x]~Table~{x,1*^3},Greater@@IntegerLength/@{Numerator@#,Denominator@#}&]*)
