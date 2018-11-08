/* Legal Expert System: Succession Law Of Ethiopia (Civil Code, 1960 and Civil Procedural Code)
	start with ?- go.   */

programmers:-
	write('#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*	A Legal Expert System: for Succession Law 	#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*	Programmed by: 					#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*	Biniam Asnake		GSR/0809/03		#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*	Negasi Gebreegziabher	GSR/0303/02		#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*							#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*		TO START THE PROGRAM: PLEASE TYPE go.	#*#*#*#*#*#*'),nl,
	write('#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*'),nl.

go:-
	programmers,nl,nl,
	write('Hello User!'),nl,
	write('This is a Legal Expert System specifically for succession claims/ cases.'),nl,
	write('Please provide all the necessary information precisely.'),nl,
	write('Thank you!'),nl,nl,
	info,
	write('Is the Person Dead? (y. / n.) -->  '), read(Deceased), firstFunction(Deceased).

info:-
	write('#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*'),nl,
	write('Some INFORMATION to know before.'),nl,
	write('1. According to the Civil Code, spouses donot succeed eachothers property.'),nl,
	write('2. If the deceased was married, the spouse takes half of the property s/he acquired with the deceased.'),nl,
	write('#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*'),nl.

firstFunction(Deceased) :-
	'n' = Deceased,
	write('According to Article 000 of the Civil Code of Ethiopia, succession claims cannot be raised until the successor is dead.').

firstFunction(Deceased) :-
	'y' = Deceased,
	write('How many years since the person passed away? (write in number) -->  '),
	read(Years), secondFunction(Years), questionZero.

secondFunction(Years) :-
	Years > 15,
	write('If there is no opponent, you can ask for moveable and non-movable materials.'),nl.
secondFunction(Years) :-
	Years >= 3,
	write('If there is no opponent, you can ask for moveable materials only.'),nl.
secondFunction(Years) :-
	Years < 3,
	write('You can ask for moveable and non-movable materials.'),nl.

questionZero :-
	write('Is Will written by the deceased?(y. / n.) --> '),
	read(Ans0), willFunction(Ans0).

willFunction(Ans0):-
	'y' = Ans0,  write('Does it fulfill ALL the requirements of a legal Will? i.e.'),nl,
	write('Does the Will have title, 3 witnesses, date and time, all the children are mentioned'),nl,
	write('or if not mentioned the reason is stated properly?'),nl,
	read(Legal), willLegalFunction(Legal). 

willFunction(Ans0):-
	'n' = Ans0, 
	write('If Will is not written, then the succession proceeds according to the articles of the Civil Code.'),
	questionOne.

willLegalFunction(Legal):-
	'y' = Legal, write('The succession proceeds according to the Will.').
	
willLegalFunction(Legal):-
	'n' = Legal,
	write('If Will is written but not legal, then the succession proceeds according to the articles of the Civil Code.'),nl,
	questionOne.

questionOne :-
	write('What is you relation with the Deceased? '),nl,
	write('Please enter one of the following: '),nl,
	write('child, grandchild, parent, grandparent, sibling, neice, nephew, uncle, aunt, government'),nl,
	write('-->  '),
	read(Relation), mainFunction(Relation).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mainFunction(Relation):-
	'child' = Relation,
	write('Is there any other child of the Deceased other than you?(y. / n.) --> '), 
	read(Ans1), childFunction(Ans1).

mainFunction(Relation):-
	'grandchild' = Relation,
	write('Is your parent who is related to the Deceased alive?(y. / n.) --> '), 
	read(Ans2), grandChildFunction(Ans2).

mainFunction(Relation):-
	'parent' = Relation,
	write('Is there any child or grandchild of the Deceased?(y. / n.) --> '), 
	read(Ans4), parentFunction(Ans4).

mainFunction(Relation):-
	'grandparent' = Relation,
	write('Is there any child or grandchild of the Deceased?(y. / n.) --> '), 
	read(Ans4), parentFunction(Ans4).

mainFunction(Relation):-
	'sibling' = Relation,
	write('Is there any child of the Deceased?(y. / n.) --> '), 
	read(Ans5), siblingFunction(Ans5).

mainFunction(Relation):-
	'neice' = Relation,
	write('Is your parent who is related to the Deceased alive?(y. / n.) --> '), 
	read(Ans8), siblingFunction(Ans8).

mainFunction(Relation):-
	'nephew' = Relation,
	write('Is your parent who is related to the Deceased alive?(y. / n.) --> '), 
	read(Ans8), siblingFunction(Ans8).

mainFunction(Relation):-
	'uncle' = Relation,
	write('Is there any child of the Deceased?(y. / n.) --> '), 
	read(Ans9), uncleAuntFunction(Ans9).

mainFunction(Relation):-
	'aunt' = Relation,
	write('Is there any child of the Deceased?(y. / n.) --> '), 
	read(Ans9), uncleAuntFunction(Ans9).

mainFunction(Relation):-
	'government' = Relation,
	write('Is there any child of the Deceased?(y. / n.) --> '), 
	read(Ans12), governmentFunction(Ans12).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

childFunction(Ans1):-
	'y' = Ans1, write('You will share with the other child/ren.'), nl,nl,
	infoChild,
	civilProcedure.
childFunction(Ans1):-
	'n' = Ans1, 
	write('===================================== '),nl,	
	write('You are the only successor of the Deceased.'), nl,nl,
	infoChild,nl,nl,
	civilProcedure.

infoChild :-
	write('Section 2. Intestate Successions (Sayinazez Yemote Sew)'),nl,
	write('Art 842 - First Relationship.'),nl,
	write('(1) The children of the deceased shall be the first to be called to his succession.'),nl,
	write('(2) Each of them shall recieve an equal portion of the succession.'),nl,
	write('(3) Where the children, or one of the children of the deceased are dead and are '),nl,
	write('survived by decendants, they shall be represented in the successions by such descendants.').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

grandChildFunction(Ans2):-
	'y' = Ans2, 
	write('According to Article 000 of the Civil Code of Ethiopia, succession claims cannot be raised until the successor [your parent] is dead.').

grandChildFunction(Ans2):-
	'n' = Ans2, 
	write('Is there any other child or grandchild of the deceased other than'),nl,
	write(' your parent and you? (y. / n. ) --> '),
	read(Ans3), grandChildFunction2(Ans3).

grandChildFunction2(Ans3):-
	'y' = Ans3, 
	write('===================================== '),nl,
	write('You will share with the other child/ren.'),
	infoChild,nl,nl,
	civilProcedure.

grandChildFunction2(Ans3):-
	'n' = Ans3, 
	write('===================================== '),nl,
	write('You are the only successor of the deceased.'),
	infoChild,nl,nl,
	civilProcedure.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

parentFunction(Ans4):-
	'y' = Ans4, 
	write('===================================== '),nl,
	write('According to Article 842(1) of the Civil Code of Ethiopia,'),nl,
	write('The children of the deceased shall be the first to be called to his succession'),
	infoParent.
parentFunction(Ans4):-
	'n' = Ans4, 
	write('===================================== '),nl,	
	write('You will share with your spouse.'),
	infoParent,nl,nl,
	civilProcedure.

infoParent:-
	write('Section 2. Intestate Successions (Sayinazez Yemote Sew)'),nl,
	write('Art 843 - Second relationship. ( - Principle)'),nl,
	write('Where the deceased is not survived by descendants, his father and mother'),nl,
	write('shall be called to his succession.'),nl,nl,

	write('Art. 844 - (Application)'),nl,
	write('(I) Each of them shall receive a moiety of the inheritance.'),nl,
	write('(2) The predeceased father and mother shall be represented by their '), nl,
	write('children or other descendants.'),nl,
	write('(3) In default of an heir in one of the lines, all the inheritance shall '),nl,
	write('devolve upon the heirs of the other line.').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

siblingFunction(Ans5):-
	'y' = Ans5, 
	write('According to Article 842(1) of the Civil Code of Ethiopia,'),nl,
	write('The children of the deceased shall be the first to be called to his succession').
siblingFunction(Ans5):-
	'n' = Ans5, 
	write('Is any of the parent or the grandparent of the deceased alive?(y. / n.) --> '), 
	read(Ans6), siblingFunction1(Ans6).

siblingFunction1(Ans6):-
	'y' = Ans6, 
	write('According to Article 843 of the Civil Code of Ethiopia, '),nl,
	write('Where the deceased is not survived by descendants, his father and mother shall be called to his succession.').
siblingFunction1(Ans6):-
	'n' = Ans6, 
	write('Is there any other sibling of the deceased?(y. / n.) --> '), 
	read(Ans7), siblingFunction2(Ans7).

siblingFunction2(Ans7):-
	'y' = Ans7,
	write('===================================== '),nl,	
	write('You will share with the siblings of the deceased.'),nl,nl,
	civilProcedure.
siblingFunction2(Ans7):-
	'n' = Ans7, 
	write('===================================== '),nl,	
	write('You are the successor of the Deceased.'),nl,nl,
	civilProcedure.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

neiceNephewFunction(Ans8):-
	'y' = Ans8, 
	write('According to Article 000 of the Civil Code of Ethiopia, succession claims cannot be raised until the successor [your parent] is dead.').
neiceNephewFunction(Ans8):-
	'n' = Ans8, 
	mainFunction('sibling').
	% After this point, the questions for siblings and neice/nephew are the same.
	% So, here we call the mainFunction by passing 'sibling' argument.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

uncleAuntFunction(Ans9):-
	'y' = Ans9, 
	write('===================================== '),nl,	
	write('According to Article 842(1) of the Civil Code of Ethiopia,'),nl,
	write('The children of the deceased shall be the first to be called to his succession.').
uncleAuntFunction(Ans9):-
	'n' = Ans9, 
	write('Is any of the parent or the grandparent of the Deceased alive?(y. / n.) --> '), 
	read(Ans10), uncleAuntFunction1(Ans10).

uncleAuntFunction1(Ans10):-
	'y' = Ans10, 
	write('===================================== '),nl,	
	write('According to Article 843 of the Civil Code of Ethiopia, '),nl,
	write('Where the deceased is not survived by descendants, his father and mother shall be called to his succession.').
uncleAuntFunction1(Ans10):-
	'n' = Ans10, 
	write('Is there any other sibling of the deceased?(y. / n.) --> '), 
	read(Ans11), uncleAuntFunction2(Ans11).

uncleAuntFunction2(Ans11):-
	'y' = Ans11,
	write('===================================== '),nl,	
	write('The siblings of the deceased are the successors.').
uncleAuntFunction2(Ans11):-
	'n' = Ans11, 
	write('===================================== '),nl,	
	write('You are the successor of the Deceased.'),
	civilProcedure.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

governmentFunction(Ans12):-
	'y' = Ans12, 
	write('===================================== '),nl,	
	write('According to Article 842:1 of the Civil Code of Ethiopia,'),nl,
	write('The children of the deceased shall be the first to be called to his succession.').

governmentFunction(Ans12):-
	'n' = Ans12,
	write('Is any of the parent or the grandparent of the Deceased alive?(y. / n.) --> '), 
	read(Ans13), governmentFunction2(Ans13).

governmentFunction2(Ans13):-
	'y' = Ans13, 
	write('===================================== '),nl,	
	write('According to Article 843 of the Civil Code of Ethiopia, '),nl,
	write('Where the deceased is not survived by descendants, his father and mother shall be called to his succession.').
governmentFunction2(Ans13):-
	'n' = Ans13, 
	write('Is there any other sibling of the deceased?(y. / n.) --> '), 
	read(Ans14), governmentFunction3(Ans14).

governmentFunction3(Ans14):-
	'y' = Ans14,
	write('===================================== '),nl,	
	write('The siblings of the deceased are the successors.').
governmentFunction3(Ans14):-
	'n' = Ans14, 
	write('Is there any uncle or aunt of the deceased?(y. / n.) --> '), 
	read(Ans15), governmentFunction4(Ans15).

governmentFunction4(Ans15):-
	'y' = Ans15,
	write('===================================== '),nl,	
	write('According to the Civil Code of Ethiopia, You cannot succeed the deceased while any of the uncles or aunts of the deceased are alive.').
governmentFunction4(Ans15):-
	'n' = Ans15, 
	write('===================================== '),nl,	
	write('If there is no relative upto 4 [four] generations, you are the successor of the deceased.'),nl,nl,
	infoGovernment,nl,nl,
	civilProcedure.

infoGovernment :-
	write('Art. 852 - Devolution upon the State.'),nl,
	write('In default of relatives, the inheritance of the deceased shall'),nl,
	write('devolve upon the State').

%%%%%%	FINALLY DISPLAYED INFORMATION ABOUT THE PROCEDURES TO GO TO COURT	%%%%%%
civilProcedure :-
	write('========================================================================'),nl,nl,
	write('If you are a successor, based on the information you gave and according to the law, '),nl,
	write('the next step is to write STATEMENT OF CLAIM.'),nl,
	write('You might need to talk to a lawyer or write the document your self based on the following guideline.'),nl,nl,
	
	write('====================================================='),nl,nl,
	write('CIVIL PROCEDURE CODE OF ETHIOPIA'),nl,
	write('PARAGRAPH 2. STATEMENT OF CLAIM AND OF DEFENCE'),nl,
	write('Art. 222.- Contents of statement of claim'),nl,
	write('(1) Every statement of claim shall contain:'),nl,
	write('	(a) the name and place ofthe court in which the action is brought;'),nl,
	write('	(b) the title of the action;'),nl,
	write('	(c) the name, description, place of residence and address for service'),nl,
	write('	of the plaintiff and defendant;'),nl,
	write('	(d) where the plaintiff or defendant is a person under disability, a'),nl,
	write('	statement to that effect'),nl,
	write('	(e) where the plaintiff is suing in a representative capacity, a statement'),nl,
	write('	showing the capacity in which he is suing '),nl,
	write('	(f) the facts constituting the cause of action, and when and where it arose'),nl,
	write('	(g) the facts showing that the court has jurisdiction'),nl,
	write('	(h) the facts showing that the defendant is or claims to be interested'),nl,
	write('	in the subject-matter and is liable to be called upon to answer the claim;'),nl,
	write('	(i) where appropriate, a statement of the value of the subject-'),nl,
	write('	mater of the action.'),nl,
	write('(2) In suits by or against the Government, instead of inserting the'),nl,
	write('	name and de~ription and place of residence of the plaintiff or'),nl,
	write('	defendant, it shall be sufficient to insert the appropriate name of'),nl,
	write('	the administrative authority concerned.'),nl,nl,

	write('	Art. 223 - Annexes'),nl,
	write('(1) The plaintiff shall attach to the statement of claim:'),nl,
	write('	(a) a list, which he shall certify to be complete, of tie witnesses'),nl,
	write('	to be called at the hearing, with their full name and address and'),nl,
	write('	the purpose for which they are to be called, and of the documents'),nl,
	write('	on which he relies, specifying in whose possession or'),nl,
	write('	power such documents are;'),nl,
	write('	(b) the original and a copy of anydocument in his possession'),nl,
	write('	upon which he sues;'),nl,
	write('	(c) where he has no witnesses or documents to produce, a declaration'),nl,
	write('	to that effect.'),nl,
	write('(2) A sufficient number of copies of the statement of claim and list,'),nl,
	write('	documents or declaration annexed there to shall be filed for'),nl,
	write('	the purpose of service on all the defendants named therein.'),nl,
	write('(3) Notwithstanding the provisions of sub-art. (2), any document'),nl,
	write('	upon which the plaintitT sues may, with the permission of the'),nl,
	write('	court, be deposited in the registry where it shall be open to inspection'),nl,
	write('	by the defendant, instead of being copied and served on'),nl,
	write('	the defendant.').