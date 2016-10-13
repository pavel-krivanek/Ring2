tests
testMetaclassTraitImplicitEnvironment

	| trait |
	
	trait := RG2MetaclassTraitDefinition unnamed.
	self assert: (trait unresolvedProperties includesAll: #(name)).
	self checkImplicitSingleTraitEnvironmentOf: trait baseTrait.
	
	
	
	
