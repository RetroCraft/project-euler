#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 69: Totient maximum*)


(* ::Text:: *)
(*Euler's Totient function, \[CurlyPhi](n) [sometimes called the phi function], is used to determine the number of numbers less than n which are relatively prime to n. For example, as 1, 2, 4, 5, 7, and 8, are all less than nine and relatively prime to nine, \[CurlyPhi](9)=6.*)
(**)
(*n 	Relatively Prime 	\[CurlyPhi](n) 	n/\[CurlyPhi](n)*)
(*2 	1 				1 	2*)
(*3 	1,2 				2 	1.5*)
(*4 	1,3 				2 	2*)
(*5 	1,2,3,4 			4 	1.25*)
(*6 	1,5 				2 	3*)
(*7 	1,2,3,4,5,6 		6 	1.1666...*)
(*8 	1,3,5,7 			4 	2*)
(*9 	1,2,4,5,7,8 		6 	1.5*)
(*10 	1,3,7,9 			4 	2.5*)
(**)
(*It can be seen that n=6 produces a maximum n/\[CurlyPhi](n) for n <= 10.*)
(**)
(*Find the value of n <= 1,000,000 for which n/\[CurlyPhi](n) is a maximum.*)


(* ::Text:: *)
(*Mean timing: 3640.63 ms*)


(* ::Input::Initialization:: *)
Print@First@MaximalBy[Range@1000000,#/EulerPhi@#&]


(* ::Text:: *)
(*Obfuscated length: 39 bytes*)


(* ::Code:: *)
(*#&@@MaximalBy[Range@1*^6,#/EulerPhi@#&]*)
