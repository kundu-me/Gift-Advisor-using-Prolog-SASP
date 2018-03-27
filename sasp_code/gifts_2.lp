%_category(categoryNumberList)
_category([1,2,3,4,5,6,7,8]).

%_gift_id(Category_id, Gift_id_NumberList)
_gift_id(1, [1,2,3,4]).
_gift_id(2, [1,2,3,4]).
_gift_id(3, [1,2,3,4]).
_gift_id(4, [1,2,3,4]).
_gift_id(5, [1,2,3,4]).
_gift_id(6, [1,2,3,4]).
_gift_id(7, [1,2,3,4]).
_gift_id(8, [1,2,3,4]).


%category_default
category_default([0]).

%category_based_on_age_group	
%category_based_on_age_group(age_group, categoryList)
category_based_on_age_group(child, [1, 2, 3]).
category_based_on_age_group(teenager, [2, 3, 4]).
category_based_on_age_group(adult, [3, 4, 5, 6]).
category_based_on_age_group(senior, [2, 3, 4, 5, 6]).

%category_based_on_finance
%category_based_on_finance(finance_level, categoryList)
category_based_on_finance(low, [3]).
category_based_on_finance(mid, [1,2,3]).
category_based_on_finance(high, [1, 2, 3, 4, 5, 6, 7, 8]).

%category_based_on_gender
%category_based_on_gender(gender, categoryList)
category_based_on_gender(male, [1,2, 3, 6,7]).
category_based_on_gender(female, [1,2, 5,8]).

%category_based_on_relation
%category_based_on_relation(relation, categoryList)
category_based_on_relation(sibling, [1,2,4,5,8]).
category_based_on_relation(parent, [1,3,5,7]).
category_based_on_relation(grand_parent, [1,4,5,6,7]).
category_based_on_relation(friend, [1,2,5,7,8]).
category_based_on_relation(couple, [1,2,3,5,6]).

%category_based_on_hobby
category_based_on_hobby(reading, [1,2,5]).
category_based_on_hobby(sports, [2,5, 7, 8]).
category_based_on_hobby(travel, [4, 6, 7, 8]).
category_based_on_hobby(music, [2,5, 6, 7,8]).

% _gift(category_id, gift_id, gift_name)
_gift(0, 1, abcdef).
_gift(0, 2, bcdefg).
_gift(0, 3, cdefgh).
_gift(0, 4, defghi).


_gift(1, 1, a).
_gift(1, 2, b).
_gift(1, 3, c).
_gift(1, 4, d).


_gift(2, 1, aa).
_gift(2, 2, bb).
_gift(2, 3, cc).
_gift(2, 4, dd).


_gift(3, 1, aaa).
_gift(3, 2, bbb).
_gift(3, 3, ccc).
_gift(3, 4, ddd).


_gift(4, 1, aaaa).
_gift(4, 2, bbbb).
_gift(4, 3, cccc).
_gift(4, 4, dddd).


_gift(5, 1, aaaaa).
_gift(5, 2, bbbbb).
_gift(5, 3, ccccc).
_gift(5, 4, ddddd).


_gift(6, 1, aaaaaa).
_gift(6, 2, bbbbbb).
_gift(6, 3, cccccc).
_gift(6, 4, dddddd).


_gift(7, 1, aaaaaaa).
_gift(7, 2, bbbbbbb).
_gift(7, 3, ccccccc).
_gift(7, 4, ddddddd).


_gift(8, 1, aaaaaaaa).
_gift(8, 2, bbbbbbbb).
_gift(8, 3, cccccccc).
_gift(8, 4, dddddddd).
