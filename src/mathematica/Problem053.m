(* ::Package:: *)

(* ::Section:: *)
(*Problem 53: Combinatoric selections*)


(* ::Text:: *)
(*There are exactly ten ways of selecting three from five, 12345:*)
(**)
(*  123, 124, 125, 134, 135, 145, 234, 235, 245, and 345*)
(**)
(*In combinatorics, we use the notation, 5C3 = 10.*)
(**)
(*In general, nCr =  n! / r!(n\[Minus]r)!, where r <= n, n! = n*(n\[Minus]1)*...*3*2*1, and 0! = 1.*)
(**)
(*It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.*)
(**)
(*How many, not necessarily distinct, values of  nCr, for 1 <= n <= 100, are greater than one-million?*)


(* ::Text:: *)
(*Mean timing: 5.09375 ms*)


(* ::Input::Initialization:: *)
Print@Length@Select[Flatten@Table[Table[Binomial[n,r],{r,n-1}],{n,100}],#>1*^6&]


(* ::Text:: *)
(*Obfuscated length: 69 bytes*)


(* ::Code:: *)
(*Tr[1^Select[Join@@Table[n~Binomial~r,{r,n-1}]~Table~{n,100},#>1.*10^6&]]*)
