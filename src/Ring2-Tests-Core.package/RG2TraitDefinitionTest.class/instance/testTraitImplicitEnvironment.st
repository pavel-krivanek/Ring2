tests
testTraitImplicitEnvironment

	| trait |
	
	trait := RG2Trait unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait.
	
	
	
	
