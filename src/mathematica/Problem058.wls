#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 58: Spiral primes*)


(* ::Text:: *)
(*Starting with 1 and spiralling anticlockwise in the following way, a square spiral with side length 7 is formed.*)
(**)
(*37 36 35 34 33 32 31*)
(*38 17 16 15 14 13 30*)
(*39 18  5  4  3 12 29*)
(*40 19  6  1  2 11 28*)
(*41 20  7  8  9 10 27*)
(*42 21 22 23 24 25 26*)
(*43 44 45 46 47 48 49*)
(**)
(*It is interesting to note that the odd squares lie along the bottom right diagonal, but what is more interesting is that 8 out of the 13 numbers lying along both diagonals are prime; that is, a ratio of 8/13 \[TildeTilde] 62%.*)
(**)
(*If one complete new layer is wrapped around the spiral above, a square spiral with side length 9 will be formed. If this process is continued, what is the side length of the square spiral for which the ratio of primes along both diagonals first falls below 10%?*)


(* ::Text:: *)
(*Mean timing: 25.8789 ms*)


(* ::Input::Initialization:: *)
Block[
{$RecursionLimit=\[Infinity]},
spiral[0]={0,1};
spiral[n_]:=spiral[n]=spiral[n-1]+{Length@Select[{4n^2-2n+1,4n^2+2n+1,4n^2+1},PrimeQ], 4};
Print[2NestWhile[#+1&,3,Divide@@spiral[#]>0.1&]+1]
]


(* ::Text:: *)
(*Obfuscated length: 142 bytes*)


(* ::Input:: *)
(*Block[{$RecursionLimit=\[Infinity]},s[0]={0,1};s[n_]:=s[n-1]+{Tr[1^Select[4n^2+2nx+1~Table~{x,-1,1},PrimeQ]],4};2NestWhile[#+1&,3,Divide@@s@#>0.1&]+1]*)
