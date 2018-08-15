#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 9: Special Pythagorean triplet*)


(* ::Text:: *)
(*A Pythagorean triplet is a set of three natural numbers, a<b<c, for which,*)
(*a^2 + b^2 = c^2*)
(**)
(*For example, 32+42 = 9+16 = 25 = 52.*)
(**)
(*There exists exactly one Pythagorean triplet for which a+b+c = 1000.*)
(*Find the product abc.*)


(* ::Text:: *)
(*Mean timing: 53.267 ms*)


(* ::Input::Initialization:: *)
Print[a*b*c/.First@Solve[
a+b+c==1000 \[And] a^2+b^2==c^2 \[And] 0<a<b<c,
{a,b,c}, Integers
]]


(* ::Text:: *)
(*Obfuscated length: 69 bytes*)


(* ::Code:: *)
(*a*b*c/.#&@@Solve[a+b+c==1*^3&&a^2+b^2==c^2&&0<a<b<c,{a,b,c},Integers]*)
