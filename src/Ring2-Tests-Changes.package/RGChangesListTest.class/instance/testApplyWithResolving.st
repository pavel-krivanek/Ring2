tests
testApplyWithResolving

	| env resolved |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	env := RGEnvironment new.
	resolved := list resolveOrigins.
	list apply: resolved in: env.
	
	"self assert: list hasFullyResolvedOrigins."
	self assert: (env ask behaviorNamed: #NewName) notNil.