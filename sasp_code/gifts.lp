%_category(categoryNumberList)
_category([1,2,3,4]).

%_gift_id(Category_id, Gift_id_NumberList)
_gift_id(1, [1,2,3,4]).
_gift_id(2, [1,2,3,4]).
_gift_id(3, [1,2,3,4]).
_gift_id(4, [1,2,3,4]).


%category_default
category_default([0]).

%category_based_on_age_group	
%category_based_on_age_group(age_group, categoryList)
category_based_on_age_group(child, [1]).
category_based_on_age_group(teenager, [1, 2]).
category_based_on_age_group(adult, [1, 2, 3, 4]).
category_based_on_age_group(senior, [1, 2, 3, 4]).

%category_based_on_finance
%category_based_on_finance(finance_level, categoryList)
category_based_on_finance(low, [1]).
category_based_on_finance(mid, [1, 2, 3]).
category_based_on_finance(high, [3,4]).

%category_based_on_gender
%category_based_on_gender(gender, categoryList)
category_based_on_gender(male, [1, 2, 3, 4]).
category_based_on_gender(female, [1, 2, 3, 4]).

%category_based_on_relation
%category_based_on_relation(relation, categoryList)
category_based_on_relation(sibling, [1,2, 3,4]).
category_based_on_relation(parent, [1, 2, 3, 4]).
category_based_on_relation(grand_parent, [1, 2]).
category_based_on_relation(friend, [1, 2, 3, 4]).
category_based_on_relation(couple, [3, 4]).

%category_based_on_hobby
category_based_on_hobby(reading, [1]).
category_based_on_hobby(sports, [2]).
category_based_on_hobby(travel, [4]).
category_based_on_hobby(music, [3]).

% _gift(category_id, gift_id, gift_name)


_gift(0, 1, showpiece1).
_gift(0, 2, chocolate).
_gift(0, 3, candy).
_gift(0, 4, showpiece2).

%reading
_gift(1, 1, book1).
_gift(1, 2, book2).
_gift(1, 3, book3).
_gift(1, 4, book4).


%sports
_gift(2, 1, bat).
_gift(2, 2, ball).
_gift(2, 3, wicket).
_gift(2, 4, tennis_racket).

%music
_gift(3, 1, music1).
_gift(3, 2, music2).
_gift(3, 3, music3).
_gift(3, 4, music4).

%travel
_gift(4, 1, ticket_to_1).
_gift(4, 2, ticket_to_2).
_gift(4, 3, ticket_to_3).
_gift(4, 4, ticket_to_4).
