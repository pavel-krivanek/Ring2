tests
testTraitImplicitEnvironment

	| trait |
	
	trait := RG2TraitDefinition unnamed.
	self assert: (trait unresolvedProperties includesAll: #(name)).
	self checkImplicitSingleTraitEnvironmentOf: trait.
	
	
	
	
