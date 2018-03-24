tests
testApplyWithResolving

	| env |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	env := RGEnvironment new.
	list resolveOrigins.
	list applyIn: env.
	
	self assert: list hasFullyResolvedOrigins.
	self assert: (env ask behaviorNamed: #NewName) notNil.