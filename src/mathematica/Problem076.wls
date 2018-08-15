#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 76: Counting summations*)


(* ::Text:: *)
(*It is possible to write five as a sum in exactly six different ways:*)
(**)
(*4 + 1*)
(*3 + 2*)
(*3 + 1 + 1*)
(*2 + 2 + 1*)
(*2 + 1 + 1 + 1*)
(*1 + 1 + 1 + 1 + 1*)
(**)
(*How many different ways can one hundred be written as a sum of at least two positive integers?*)


(* ::Text:: *)
(*IntegerPartitions[n] includes {n} as a summation, so subtract 1*)


(* ::Text:: *)
(*Mean timing: 0.00078125 ms*)


(* ::Input::Initialization:: *)
Print[PartitionsP[100]-1]


(* ::Text:: *)
(*Obfuscated length: 18 bytes*)


(* ::Input:: *)
(*PartitionsP@100-1*)
