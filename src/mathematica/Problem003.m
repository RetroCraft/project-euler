(* ::Package:: *)

(* ::Section:: *)
(*Problem 3: Largest prime factor*)


(* ::Text:: *)
(*The prime factors of 13195 are 5, 7, 13 and 29.*)
(**)
(*What is the largest prime factor of the number 600851475143 ?  *)


(* ::Text:: *)
(*Mean timing: 0.015625 ms*)


(* ::Input::Initialization:: *)
Print@Max[First/@FactorInteger[600851475143]]


(* ::Text:: *)
(*Obfuscated length: 38 bytes*)


(* ::Code:: *)
(*Max[First/@FactorInteger@600851475143]*)
