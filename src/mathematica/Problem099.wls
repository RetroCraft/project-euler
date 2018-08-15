#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 99: Largest exponential*)


(* ::Text:: *)
(*Comparing two numbers written in index form like 211 and 37 is not difficult, as any calculator would confirm that 211 = 2048 < 37 = 2187.*)
(**)
(*However, confirming that 632382518061 > 519432525806 would be much more difficult, as both numbers contain over three million digits.*)
(**)
(*Using base_exp.txt (right click and 'Save Link/Target As...'), a 22K text file containing one thousand lines with a base/exponent pair on each line, determine which line number has the greatest numerical value.*)
(**)
(*NOTE: The first two lines in the file represent the numbers in the example given above.*)


(* ::Text:: *)
(*Mean timing: 23.9258 ms*)


(* ::Input::Initialization:: *)
First@Ordering[N[#[[2]]Log@#[[1]]]&/@Import["data/Problem99.txt","CSV"] ,-1]


(* ::Text:: *)
(*Obfuscated length: 72 bytes*)


(* ::Code:: *)
(*#&@@Ordering[N[#[[2]]Log@First#]&/@"data/Problem99.txt"~Import~"CSV",-1]*)
