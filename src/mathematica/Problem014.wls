#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 14: Longest Collatz sequence*)


(* ::Text:: *)
(*The following iterative sequence is defined for the set of positive integers:*)
(**)
(*n \[RightArrow] n/2 (n is even)*)
(*n \[RightArrow] 3n + 1 (n is odd)*)
(**)
(*Using the rule above and starting with 13, we generate the following sequence:*)
(*13 \[RightArrow] 40 \[RightArrow] 20 \[RightArrow] 10 \[RightArrow] 5 \[RightArrow] 16 \[RightArrow] 8 \[RightArrow] 4 \[RightArrow] 2 \[RightArrow] 1*)
(**)
(*It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.*)
(**)
(*Which starting number, under one million, produces the longest chain?*)


(* ::Text:: *)
(*Mean timing: 7546.88 ms*)


(* ::Input::Initialization:: *)
collatzLength[1] = 1;
collatzLength[n_Integer] := collatzLength[n] = 
	1 + If[EvenQ[n], collatzLength[n/2], collatzLength[3n+1]];

Print@First@MaximalBy[Range[1000000], collatzLength]


(* ::Text:: *)
(*Obfuscated length: 75 bytes*)


(* ::Code:: *)
(*c[1]=1;c[n_]:=c[n]=1+If[EvenQ@n,c[n/2],c[3n+1]];#&@@MaximalBy[Range@1*^6,c]*)
