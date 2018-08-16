(* ::Package:: *)

(* ::Section:: *)
(*Problem 31: Coin sums*)


(* ::Text:: *)
(*In England the currency is made up of pound, \[Sterling], and pence, p, and there are eight coins in general circulation:*)
(**)
(*    1p, 2p, 5p, 10p, 20p, 50p, \[Sterling]1 (100p) and \[Sterling]2 (200p).*)
(**)
(*It is possible to make \[Sterling]2 in the following way:*)
(**)
(*    1*\[Sterling]1 + 1*50p + 2*20p + 1*5p + 1*2p + 3*1p*)
(**)
(*How many different ways can \[Sterling]2 be made using any number of coins?*)


(* ::Text:: *)
(*Mean timing: 281.25 ms*)


(* ::Input::Initialization:: *)
Print@Length@FrobeniusSolve[{1,2,5,10,20,50,100,200},200]


(* ::Text:: *)
(*Obfuscated length: 52 bytes*)


(* ::Code:: *)
(*Length@FrobeniusSolve[{1,2,5,10,20,50,100,200},200]*)
