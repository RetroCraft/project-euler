#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 15: Lattice paths*)


(* ::Text:: *)
(*Starting in the top left corner of a 2*2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.*)
(**)
(*How many such routes are there through a 20*20 grid?*)


(* ::Text:: *)
(*See MathWorld/Lattice Path*)


(* ::Text:: *)
(*Mean timing: 0.00140625 ms*)


(* ::Input::Initialization:: *)
Print@Binomial[40, 20]


(* ::Text:: *)
(*Obfuscated length: 14 bytes*)


(* ::Code:: *)
(*40~Binomial~20*)
