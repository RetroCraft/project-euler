(* ::Package:: *)

(* ::Section:: *)
(*Problem 42: Coded triangle numbers*)


(* ::Text:: *)
(*The nth term of the sequence of triangle numbers is given by, tn = \.bdn(n+1); so the first ten triangle numbers are:*)
(**)
(*1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...*)
(**)
(*By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value is a triangle number then we shall call the word a triangle word.*)
(**)
(*Using words.txt (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?*)


(* ::Text:: *)
(*Mean timing: 281.25 ms*)


(* ::Input::Initialization:: *)
Print@Length@Select[Apply@Plus/@LetterNumber/@Flatten@Import["data/Problem042.txt", "CSV"],IntegerQ@Sqrt[8#+1]&]


(* ::Text:: *)
(*Obfuscated length: 98 bytes*)


(* ::Code:: *)
(*Tr[1^Select[Plus@@#&/@LetterNumber/@Join@@Import["data/Problem042.txt","CSV"],IntegerQ@\[Sqrt](8#+1)&]]*)
