(* ::Package:: *)

(* ::Section:: *)
(*Problem 92: Square digit chains*)


(* ::Text:: *)
(*A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.*)
(**)
(*For example,*)
(**)
(*44 \[RightArrow] 32 \[RightArrow] 13 \[RightArrow] 10 \[RightArrow] 1 \[RightArrow] 1*)
(*85 \[RightArrow] 89 \[RightArrow] 145 \[RightArrow] 42 \[RightArrow] 20 \[RightArrow] 4 \[RightArrow] 16 \[RightArrow] 37 \[RightArrow] 58 \[RightArrow] 89*)
(**)
(*Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.*)
(**)
(*How many starting numbers below ten million will arrive at 89?*)


(* ::Text:: *)
(*Mean timing: 5375 ms*)


(* ::Input::Initialization:: *)
squareChain[1]=False;
squareChain[89]=True;
squareChain[x_Integer]:=squareChain[x]=squareChain[Total[IntegerDigits[x]^2]];
Print@Length@Select[Range[10000000],squareChain]


(* ::Text:: *)
(*Obfuscated length: 92 bytes*)


(* ::Code:: *)
(*s[1]=1>2;s[89]=1<2;s[x_Integer]:=s[x]=s@Total[IntegerDigits[x]^2];Tr[1^Select[Range@1*^7,s]]*)
