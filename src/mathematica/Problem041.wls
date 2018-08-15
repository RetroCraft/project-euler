#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 41: Pandigital prime*)


(* ::Text:: *)
(*We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital and is also prime.*)
(**)
(*What is the largest n-digit pandigital prime that exists?*)


(* ::Text:: *)
(*Mean timing: 281.25 ms*)


(* ::Input::Initialization:: *)
Print@Max@Flatten@Table[Select[FromDigits/@Permutations[Range@n],PrimeQ],{n,9}]


(* ::Text:: *)
(*Obfuscated length: 72 bytes*)


(* ::Code:: *)
(*Max[Join@@Table[Select[FromDigits/@Permutations[Range@n],PrimeQ],{n,9}]]*)
