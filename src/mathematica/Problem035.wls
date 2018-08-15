#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 35: Circular primes*)


(* ::Text:: *)
(*The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.*)
(**)
(*There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.*)
(**)
(*How many circular primes are there below one million?*)


(* ::Text:: *)
(*Mean timing: 953.125 ms*)


(* ::Input::Initialization:: *)
Print@Length@Select[IntegerDigits/@Prime@Range@PrimePi@1000000,And@@PrimeQ/@FromDigits/@Table[RotateLeft[#,x],{x,0,Length@#}]&]


(* ::Text:: *)
(*Obfuscated length: 117 bytes*)


(* ::Code:: *)
(*Length@Select[IntegerDigits/@Prime@Range@PrimePi@1*^6,And@@PrimeQ/@FromDigits/@Table[#~RotateLeft~x,{x,0,Length@#}]&]*)
