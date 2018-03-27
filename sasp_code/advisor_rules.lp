%age_group(age, group).
age_group(Age, child) :- 
	(Age > 0), (Age =< 12).

age_group(Age, teenager) :- 
	(Age > 12), (Age =< 19).
	
age_group(Age, adult) :- 
	(Age >= 20), (Age =< 50).

age_group(Age, senior) :- 
	(Age >= 51), (Age =< 100).


%filter_dislike(Gifts_All_Likes, DislikeGiftsList, Gifts)
filter_dislike(Gifts_All, DislikeGiftsList, Gifts) :- filter_dislike(Gifts_All, DislikeGiftsList, [], Gifts).

filter_dislike([], _, Acc, Acc).

filter_dislike([gift(C,GID,GN)|T], DislikeGiftsList, Acc, Gifts) :-
		member(GN, DislikeGiftsList),
		filter_dislike(T, DislikeGiftsList, Acc, Gifts).
		
filter_dislike([gift(C,GID,GN)|T], DislikeGiftsList, Acc, Gifts) :-
		not member(GN, DislikeGiftsList),
		filter_dislike(T, DislikeGiftsList, [gift(C,GID,GN)|Acc], Gifts).
		

%get_all_ gifts
%gifts(CategoryList, Giftnames)
gifts(CategoryList, Gifts) :- gifts(CategoryList, [], Gifts).

gifts([], Acc, Acc).
gifts([HC | TC], Acc, Gifts) :-
	_gift_id(HC, GIDs),
	gifts_structure(HC, GIDs, GiftStList),
	union(Acc, GiftStList, UpdatedGiftsStList),
	gifts(TC, UpdatedGiftsStList, Gifts).

%gifts_structure(Category, GIDs, GiftStList).
gifts_structure(Category, GIDs, GiftStList) :- gifts_structure(Category, GIDs, [], GiftStList).

gifts_structure(_, [], Acc, Acc).

gifts_structure(C, [HGID|TGID], Acc, GiftStList):-
	_gift(C, HGID, GiftName),
	gifts_structure(C, TGID, [gift(C, HGID, GiftName)|Acc], GiftStList).
	
%get_like_gifts(Likes, Gifts).
get_like_gifts([],[]).
get_like_gifts([H|Likes], Gifts) :-
	_category(CList),
	gifts_structure_like(CList, [H|Likes], [], Gifts).

%gifts_structure_like(CategoryList, Likes, GiftStList).
gifts_structure_like([], _, Acc, Acc).

gifts_structure_like([H|T], Likes, Acc, Gifts) :- 
	_gift_id(H, GIDs),
	gifts_structure_like_create(H, GIDs, Likes, [], GiftStList),
	union(Acc, GiftStList, UpdatedGiftsStList),
	gifts_structure_like(T, Likes, UpdatedGiftsStList, Gifts).

%gifts_structure_like_create(Category, GIDs, Likes, GiftStList).
gifts_structure_like_create(_, [], _, Acc, Acc).

gifts_structure_like_create(Category, [HGID|TGID], Likes, Acc, GiftStList) :-
	_gift(Category, HGID, GiftName),
	member(GiftName, Likes),
	gifts_structure_like_create(Category, TGID, Likes, [gift(Category, HGID, GiftName)|Acc], GiftStList).
	
gifts_structure_like_create(Category, [HGID|TGID], Likes, Acc, GiftStList) :-
	_gift(Category, HGID, GiftName),
	not member(GiftName, Likes),
	gifts_structure_like_create(Category, TGID, Likes, Acc, GiftStList).
	
%filter_category_based_on_finance(Gifts_All_L_D, CF, Gifts).
filter_category_based_on_finance(Gifts_All_L_D, CF, Gifts) :- filter_category_based_on_finance(Gifts_All_L_D, CF, [], Gifts).

filter_category_based_on_finance([], _, Acc, Acc).
filter_category_based_on_finance([gift(C, GID, GName)|T], CF, Acc, Gifts) :-
	member(C, CF),
	filter_category_based_on_finance(T, CF, [gift(C, GID, GName)|Acc], Gifts).

filter_category_based_on_finance([gift(C, GID, GName)|T], CF, Acc, Gifts) :-
	not member(C, CF),
	filter_category_based_on_finance(T, CF, Acc, Gifts).

%when a person hobby is reading, he might sit in home and study, he might not like sports
update_category_based_on_hobby(reading, C1, C) :- category_based_on_hobby(sports, C2), minus_list(C1, C2, C).
update_category_based_on_hobby(sports, C1, C) :- category_based_on_hobby(reading, C2), minus_list(C1, C2, C).

%when a person hobby is reading, he might sit in home and study, he might not like travelling
update_category_based_on_hobby(reading, C1, C) :- category_based_on_hobby(music, C2), minus_list(C1, C2, C).
update_category_based_on_hobby(music, C1, C) :- category_based_on_hobby(reading, C2), minus_list(C1, C2, C).

%update_category_based_on_hobby :- when a person hobby is sports, he might like music too
update_category_based_on_hobby(sports, C1, C) :- category_based_on_hobby(music, C2), union(C1, C2, C).

%update_category_based_on_hobby :- when a person hobby is travel, he might like music too
update_category_based_on_hobby(travel, C1, C) :- category_based_on_hobby(music, C2), union(C1, C2, C).

%update_category_based_on_hobby :- when a person hobby is travel, he might like reading too
update_category_based_on_hobby(travel, C1, C) :- category_based_on_hobby(reading, C2), union(C1, C2, C).


