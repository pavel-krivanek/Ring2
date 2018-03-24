tests
testApplyWithResolvingWithCleaning

	| env |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	env := RGEnvironment new.
	list resolveOrigins.
	list applyIn: env.
	list clean.
	
	self assert: list hasFullyResolvedOrigins.
	self assert: (env ask behaviorNamed: #NewName) notNil.
	self assert: (list changes allSatisfy: [:each | each pvtBehavior isNil]).