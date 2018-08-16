(* ::Package:: *)

(* ::Section:: *)
(*Problem 33: Digit cancelling fractions*)


(* ::Text:: *)
(*The fraction 49/98 is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, is obtained by cancelling the 9s.*)
(**)
(*We shall consider fractions like, 30/50 = 3/5, to be trivial examples.*)
(**)
(*There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.*)
(**)
(*If the product of these four fractions is given in its lowest common terms, find the value of the denominator.*)


(* ::Text:: *)
(*Mean timing: 42.6136 ms*)


(* ::Input::Initialization:: *)
Print@Quiet[reducable[{x_,y_}]:=x/y==Complement[IntegerDigits[x],IntegerDigits[y]][[1]]/Complement[IntegerDigits[y],IntegerDigits[x]][[1]]&&Length[IntegerDigits[x]\[Intersection]IntegerDigits[y]]>0;
pairs=Select[Flatten[Table[{x,y},{x,10,99},{y,10,99}],1],#[[1]]<#[[2]]&];
unique=Select[pairs,reducable];
nonTrivial=Select[unique,!(Divisible[#[[1]],10]&&Divisible[#[[2]],10])&];
Denominator[Times@@(#[[1]]/#[[2]]&/@nonTrivial)]
]
