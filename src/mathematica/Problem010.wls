#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 10: Summation of primes*)


(* ::Text:: *)
(*The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.*)
(**)
(*Find the sum of all the primes below two million.*)


(* ::Text:: *)
(*Mean timing: 14.0625 ms*)


(* ::Input:: *)
(*Print@Total[Prime[Range[PrimePi[2000000]]]]*)


(* ::Text:: *)
(*Obfuscated length: 27 bytes*)


(* ::Code:: *)
(*Tr@Prime@Range@PrimePi@2*^6*)
