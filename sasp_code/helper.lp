%intersection(L1, L2, L3).
intersection([], _, []).

intersection([H1|T1], L2, [H1|R]) :-
	member(H1, L2),
    intersection(T1, L2, R).

intersection([H1|T1], L2, R) :-
	not member(H1, L2),
    intersection(T1, L2, R).	
	
%union(L1, L2, L12).
union([], L, L).

union([Head|L1tail], L2, L3) :- 
	member(Head, L2), 
	union(L1tail, L2, L3).

union([Head|L1tail], L2, [Head|L3tail]) :- 
	not member(Head, L2), 
	union(L1tail, L2, L3tail).

%select(item, input_list, output_list)
select(X, [X|T], T).
select(X, [Y|T], [Y|R]) :-	select(X, T, R).

%permutation(input_list, output_list)
permutation([], []).
permutation(L, [X|R]) :- 
	select(X, L, T), permutation(T, R).
	
%member(X, List)
member(X,[X|T]).
member(X,[Y|T]) :- X\=Y, member(X,T).

%length of list
length([], 0).

length([H|T], S) :- length(T, S1), S is S1 +1.

%minus_list(L1, L2, L3) :- L1 - L2 = L3

minus_list(L1, L2, L3) :- minus_list(L1, L2, [], L3).

minus_list([], _, Acc, Acc).
 
minus_list([H|T], L2, Acc, L3) :- 
	member(H, L2),
	minus_list(T, L2, Acc, L3).
	
minus_list([H|T], L2, Acc, L3) :- 
	not member(H, L2),
	minus_list(T, L2, [H|Acc], L3).



