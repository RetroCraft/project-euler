#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 64: Odd period square roots*)


(* ::Text:: *)
(*See https://projecteuler.net/problem=64*)


(* ::Text:: *)
(*Mean timing: 4296.88 ms*)


(* ::Input::Initialization:: *)
Print@Length@Select[Last/@ContinuedFraction/@Select[Sqrt/@Range@10000,QuadraticIrrationalQ],OddQ@Length@#&]


(* ::Text:: *)
(*Obfuscated length: 98 bytes*)


(* ::Code:: *)
(*Tr[1^Select[Length/@Last/@ContinuedFraction/@Select[\[Sqrt]#&/@Range@1*^4,QuadraticIrrationalQ],OddQ]]*)
