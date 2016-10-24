tests
testTraitImplicitEnvironment

	| trait |
	
	trait := RG2TraitDefinition unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait.
	
	
	
	
