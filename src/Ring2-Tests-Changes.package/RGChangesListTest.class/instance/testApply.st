tests
testApply

	| env |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	env := RGEnvironment new.
	list applyIn: env.
	
	self assert: (env ask behaviorNamed: #NewName) notNil.