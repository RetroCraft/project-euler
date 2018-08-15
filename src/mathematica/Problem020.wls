#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 20: Factorial digit sum*)


(* ::Text:: *)
(*n! means n * (n \[Minus] 1) * ... * 3 * 2 * 1*)
(**)
(*For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,*)
(*and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.*)
(**)
(*Find the sum of the digits in the number 100!*)


(* ::Text:: *)
(*Mean timing: 0.00226563 ms*)


(* ::Input::Initialization:: *)
Print@Total@IntegerDigits[100!] 


(* ::Text:: *)
(*Obfuscated length: 22 bytes*)


(* ::Code:: *)
(*Tr@IntegerDigits[100!]*)
