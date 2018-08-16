(* ::Package:: *)

(* ::Section:: *)
(*Problem 19: Counting Sundays*)


(* ::Text:: *)
(*You are given the following information, but you may prefer to do some research for yourself.*)
(**)
(*    1 Jan 1900 was a Monday.*)
(*    Thirty days has September,*)
(*    April, June and November.*)
(*    All the rest have thirty-one,*)
(*    Saving February alone,*)
(*    Which has twenty-eight, rain or shine.*)
(*    And on leap years, twenty-nine.*)
(*    A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.*)
(**)
(*How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?*)


(* ::Text:: *)
(*Mean timing: 109.375 ms*)


(* ::Input::Initialization:: *)
Print@Length@Select[Join@@Table[DateList@{x, y,1}, {x,1901,2000},{y,1,12}],DayName@#==Sunday&]


(* ::Text:: *)
(*Obfuscated length: 85 bytes*)


(* ::Code:: *)
(*Tr[1^Select[Join@@Table[DateList@{x,y,1},{x,1901,2000},{y,1,12}],DayName@#==Sunday&]]*)
