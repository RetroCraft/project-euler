(* ::Package:: *)

(* ::Section:: *)
(*Problem 11: Largest product in a grid*)


(* ::Text:: *)
(*In the 20*20 grid below, four numbers along a diagonal line have been marked in red.*)
(**)
(*[...]*)
(**)
(*The product of these numbers is 26 * 63 * 78 * 14 = 1788696.*)
(**)
(*What is the greatest product of four adjacent numbers in the same direction (up, down, left, right, or diagonally) in the 20*20 grid?*)


(* ::Text:: *)
(*Mean timing: 2.2 ms *)


(* ::Input::Initialization:: *)
arr=ToExpression//@StringSplit/@StringSplit[Import["data/Problem011.txt"],"\n"];
diagLeft=Table[Times@@Table[arr[[i+n]][[j+n]],{n,0,3}],{i,17},{j,17}];
diagRight=Table[Times@@Table[arr[[i+n]][[j-n]],{n,0,3}],{i,17},{j,4,20}];
vert=Table[Times@@Table[arr[[i]][[j+n]],{n,0,3}],{i,20},{j,17}];
horiz=Table[Times@@Table[arr[[i+n]][[j]],{n,0,3}],{i,17},{j,20}];
Print@Max[diagLeft,diagRight,vert,horiz]


(* ::Text:: *)
(*Obfuscated length:*)


(* ::Code:: *)
(**)
