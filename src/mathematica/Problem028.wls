#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 28: Number spiral diagonals*)


(* ::Text:: *)
(*Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:*)
(**)
(*21 22 23 24 25*)
(*20  7  8  9 10*)
(*19  6  1  2 11*)
(*18  5  4  3 12*)
(*17 16 15 14 13*)
(**)
(*It can be verified that the sum of the numbers on the diagonals is 101.*)
(**)
(*What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?*)


(* ::Text:: *)
(*Mean timing: 0.09375 ms*)


(* ::Input::Initialization:: *)
Print[\!\(
\*SubsuperscriptBox[\(\[Sum]\), \(x\), \(500\)]\((12 
\*SuperscriptBox[\(x\), \(2\)] + 3)\)\)+\!\(
\*SubsuperscriptBox[\(\[Sum]\), \(x\), \(501\)]
\*SuperscriptBox[\((2  x - 1)\), \(2\)]\) ]


(* ::Text:: *)
(*Obfuscated length: 42 bytes*)


(* ::Code:: *)
(*Sum[12x^2+3,{x,500}]+Sum[(2x-1)^2,{x,501}]*)
