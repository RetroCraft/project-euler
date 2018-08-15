#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 6: Sum square difference*)


(* ::Text:: *)
(*The sum of the squares of the first ten natural numbers is,*)
(*12 + 22 + ... + 102 = 385*)
(**)
(*The square of the sum of the first ten natural numbers is,*)
(*(1 + 2 + ... + 10)2 = 552 = 3025*)
(**)
(*Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 \[Minus] 385 = 2640.*)
(**)
(*Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.*)


(* ::Text:: *)
(*Mean timing: 0.015625 ms*)


(* ::Input::Initialization:: *)
Print[Total[Range[100]]^2-Total[Range[100]^2]]


(* ::Text:: *)
(*Obfuscated length: 31 bytes*)


(* ::Code:: *)
(*Tr@Range[100]^2-Tr[Range@100^2]*)
