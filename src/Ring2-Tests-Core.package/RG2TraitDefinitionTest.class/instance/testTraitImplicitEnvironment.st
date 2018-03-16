tests
testTraitImplicitEnvironment

	| trait |
	
	trait := RG2TraitOld unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait.
	
	
	
	
