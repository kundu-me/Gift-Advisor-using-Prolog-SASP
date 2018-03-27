_user(u1, user(	from_name('Nirmallya','Kundu'), 
				from_gender(male),
				form_age(25),
				from_finance(low),	 
				to_name('John', 'Naas'),
				to_gender(male),	
				to_age(30),
				to_relation(sibling),
				to_hobby(reading),
				to_likes([book2, bat]),
				to_dislikes([ball, book1])
				 ) 
				).

_user(u2, user(from_name('Nirmallya','Kundu'), 
				from_gender(male),
				form_age(25),
				from_finance(low),	 
				to_name('John', 'Naas'),
				to_gender(male),	
				to_age(30),
				to_relation(sibling),
				to_hobby(reading),
				to_likes([book2, ticket_to_1]),
				to_dislikes([ball, book1])
				 ) 
				).
				
_user(u3, user(	from_name('Mr.','Kundu'), 
				from_gender(male),
				form_age(35),
				from_finance(high),	 
				to_name('Mrs.', 'Kundu'),
				to_gender(female),	
				to_age(30),
				to_relation(couple),
				to_hobby(travel),
				to_likes([book3]),
				to_dislikes([])
				 ) 
				).
				
_user(u4, user(	from_name('Mr.','Kundu'), 
				from_gender(male),
				form_age(35),
				from_finance(low),	 
				to_name('Master', 'Kundu'),
				to_gender(male),	
				to_age(10),
				to_relation(parent),
				to_hobby(travel),
				to_likes([bat]),
				to_dislikes([ball])
				 ) 
				).
