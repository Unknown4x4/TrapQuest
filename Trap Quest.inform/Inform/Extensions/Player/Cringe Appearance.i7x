Cringe Appearance by Player begins here.


[!<DecideWhichNumberIsTheCringeAppearanceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the cringe appearance of the player: 
	let B be 1;
	if the make-up of face < 3, decrease B by the make-up of face; [whore make-up doesn't make the player look less childish]
	increase B by cumulative-cringe-level;
	if B < 0, decide on 0;
	if B > 20, decide on 20;
	decide on B.

[!<DecideWhichNumberIsTheAdultInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the adult-influence of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsTheAdultInfluenceOfMaturityClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the adult-influence of (C - a maturity clothing):
	decide on 1.

[!<DecideWhichNumberIsTheAdultAppearanceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the adult appearance of the player:
	let B be 0;
	increase B by the make-up of face;
	if breasts is showing cleavage, increase B by 1;
	repeat with C running through worn wearthings:
		if C is currently visible, increase B by the adult-influence of C;
	decide on B.


[!<cringeTarget:Thing>*

REQUIRES COMMENTING

*!]
cringe-target is a thing that varies. 

[!<appearanceCringeTarget:Thing>*

REQUIRES COMMENTING

*!]
appearance-cringe-target is a thing that varies.

[!<DecideWhichNumberIsAppearanceCringeLevel>+

Here we decide what is the most childish visible item of clothing the player is wearing OR BODY PART.

+!]
To decide which number is appearance-cringe-level:
	let O be 0;
	now cringe-target is arms;
	now appearance-cringe-target is arms;
	repeat with C running through worn currently visible wearthings:
		let OC be the cringe of C; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now cringe-target is C;
			now appearance-cringe-target is C;
	repeat with C running through body parts:
		let OC be the cringe of C; [to make sure we only spend the CPU cycles to calculate it once]
		if OC > O:
			now O is OC;
			now appearance-cringe-target is C;
	decide on O.


[!<DecideWhichNumberIsCumulativeCringeLevel>+

REQUIRES COMMENTING

+!]
To decide which number is cumulative-cringe-level:
	let A be appearance-cringe-level;
	let O be A / 2;
	repeat with C running through worn currently visible wearthings:
		if the cringe of C > O, increase O by 1;
	repeat with C running through body parts:
		if the cringe of C > O, increase O by 1;
	if O > A, decide on A; [wearing twenty cringe 2 items shouldn't be cringe 20 overall]
	if appearance-explained is 1, say "(cumulative outrage level is [O]) ";
	if O > 20, decide on 20;
	decide on O.

calculated-cringe-level is a number that varies.

Cringe Appearance ends here.

