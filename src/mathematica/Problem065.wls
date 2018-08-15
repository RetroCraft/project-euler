#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 65: Convergents of e*)


(* ::Text:: *)
(*See https://projecteuler.net/problem=65*)


(* ::Text:: *)
(*Mean timing: 0.15625 ms*)


(* ::Input::Initialization:: *)
Print@Total@IntegerDigits@Numerator@FromContinuedFraction@ContinuedFraction[E,100]


(* ::Text:: *)
(*Obfuscated length: 73 bytes*)


(* ::Code:: *)
(*Tr@IntegerDigits@Numerator@FromContinuedFraction@ContinuedFraction[E,100]*)
