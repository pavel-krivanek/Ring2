tests
testApplyRawIn

	| env |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	env := RGEnvironment new.
	self deny: list hasFullyResolvedOrigins.
	self should: [ list applyIn: env ] raise: RGResolvingError.