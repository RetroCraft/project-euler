#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Section:: *)
(*Problem 22: Names scores*)


(* ::Text:: *)
(*Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.*)
(**)
(*For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 * 53 = 49714.*)
(**)
(*What is the total of all the name scores in the file?*)


(* ::Text:: *)
(*Mean timing: 812.5 ms*)


(* ::Input::Initialization:: *)
Print[Total[#*Range@Length@#]&[Total/@LetterNumber@Sort@Flatten@Import["data/Problem022.txt", "CSV"]]]


(* ::Text:: *)
(*Obfuscated length: 86 bytes*)


(* ::Code:: *)
(*Tr/@LetterNumber@Sort[Join@@Import["data/Problem022.txt","CSV"]]//Tr[#*Range@Tr[1^#]]&*)
