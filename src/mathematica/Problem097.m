(* ::Package:: *)

(* ::Section:: *)
(*Problem 97: Large non-Mersenne prime*)


(* ::Text:: *)
(*The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form 2^6972593\[Minus]1; it contains exactly 2,098,960 digits. Subsequently other Mersenne primes, of the form 2^p\[Minus]1, have been found which contain more digits.*)
(**)
(*However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 28433*2^7830457+1.*)
(**)
(*Find the last ten digits of this prime number.*)


(* ::Text:: *)
(*Mean timing: 296.875 ms*)


(* ::Input::Initialization:: *)
Mod[28433*2^7830457+1,1*^10]


(* ::Text:: *)
(*Obfuscated length: 53 bytes*)


(* ::Code:: *)
(*Mod[28433*2^7830457+1,1.*10^10]*)
