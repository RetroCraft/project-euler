(* ::Package:: *)

(* ::Section:: *)
(*Problem 5: Smallest multiple*)


(* ::Text:: *)
(*2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.*)
(**)
(*What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?*)


(* ::Text:: *)
(*Mean timing: 0.015625 ms*)


(* ::Input::Initialization:: *)
Print[LCM@@Range[20]]


(* ::Text:: *)
(*Obfuscated length: 13 bytes*)


(* ::Code:: *)
(*LCM@@Range@20*)
