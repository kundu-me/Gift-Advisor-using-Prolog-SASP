#include 'gifts.lp'.
#include 'users.lp'.
#include 'helper.lp'.
#include 'advisor_rules.lp'.

%default advisor(Gift) based on random permutation
advise_gift_random(Gift) :- 
	_category(C), _gift_id(GID),
	permutation(C, C1), select(Category, C1, _),
	permutation(GID, N1), select(GiftId, N1, _),
	_gift(Category, GiftId, Gift).
	
%advisor(Gift) based on user data
advise_gift(UserId, GiftName) :-
	_user(UserId, user( from_name(From_fname, From_lname), 
						from_gender(From_gender),
						form_age(From_age),
						from_finance(From_finance),	 
						to_name(To_fname, To_lname),
						to_gender(To_Gender),	
						to_age(To_age),
						to_relation(Relation),
						to_hobby(Hobby),
						to_likes(LikesList),
						to_dislikes(DislikeGiftsList)
						) 
						),
			
			category_default(C00),
			
			age_group(From_age, From_Age_Group), 
			age_group(To_age, To_Age_Group), 
			
			category_based_on_age_group(From_Age_Group, C1),
			category_based_on_age_group(To_Age_Group, C2),
			
			category_based_on_gender(To_gender, C3),
			category_based_on_gender(From_gender, C4),
			
			category_based_on_relation(Relation, C5),
			category_based_on_hobby(Hobby, C6),
			
			category_based_on_finance(From_finance, C7),
			
			union(C00, C1, C01),
			union(C01, C2, C02),
			union(C02, C3, C03),
			union(C03, C4, C04),
			union(C04, C5, C05),
			union(C05, C6, C06),
			
			intersection(C06, C7, C07),
			
			update_category_based_on_hobby(Hobby, C07, C08),
						
			gifts(C08, Gifts_All),
			get_like_gifts(LikesList, Gifts_Likes),
			union(Gifts_All, Gifts_Likes, Gifts_All_Likes),
			filter_dislike(Gifts_All_Likes, DislikeGiftsList, Gifts_All_L_D),
			filter_category_based_on_finance(Gifts_All_L_D, C7, Gifts), 
			select(gift(Category,GiftId,GiftName), Gifts, _),
			write(GiftName).