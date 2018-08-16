(* ::Package:: *)

(* ::Section:: *)
(*Problem 18: Maximum path sum I*)


(* ::Text:: *)
(*By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.*)
(**)
(*3*)
(*7 4*)
(*2 4 6*)
(*8 5 9 3*)
(**)
(*That is, 3 + 7 + 4 + 9 = 23.*)
(**)
(*Find the maximum total from top to bottom of the triangle below :*)
(**)
(*[...]*)


(* ::Text:: *)
(*Mean timing: 76.7045 ms*)


(* ::Input::Initialization:: *)
triangle=Import["data/Problem018.txt","Table","FieldSeparators"->" "];
path[x_,y_]:=triangle[[x,y]]+If[x<Length@triangle,Max[path[x+1,y],path[x+1,y+1]],0];
Print@path[1,1]


(* ::Text:: *)
(*Obfuscated length: 130 bytes*)


(* ::Code:: *)
(*t=Import["data/Problem018.txt","Table","FieldSeparators"->" "];p[x_,y_]:=t[[x,y]]+If[x<Length@t,Max[p[x+1,y],p[x+1,y+1]],0];p[1,1]*)
