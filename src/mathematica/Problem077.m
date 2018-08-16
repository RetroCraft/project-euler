(* ::Package:: *)

(* ::Section:: *)
(*Problem 77: Prime summations*)


(* ::Text:: *)
(*It is possible to write ten as the sum of primes in exactly five different ways:*)
(**)
(*7 + 3*)
(*5 + 5*)
(*5 + 3 + 2*)
(*3 + 3 + 2 + 2*)
(*2 + 2 + 2 + 2 + 2*)
(**)
(*What is the first value which can be written as the sum of primes in over five thousand different ways?*)


(* ::Text:: *)
(*Mean timing: 11.2305 ms*)


(* ::Input::Initialization:: *)
Print@NestWhile[#+1&,10,Length@IntegerPartitions[#,All,Prime@Range@PrimePi@#]<5000&]


(* ::Text:: *)
(*Obfuscated length: 73 bytes*)


(* ::Code:: *)
(*NestWhile[#+1&,1,Tr@IntegerPartitions[#,All,Prime@Range@PrimePi@#]<5.*10^3&]*)
