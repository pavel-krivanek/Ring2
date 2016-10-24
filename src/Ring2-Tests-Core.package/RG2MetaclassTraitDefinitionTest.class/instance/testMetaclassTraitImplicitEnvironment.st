tests
testMetaclassTraitImplicitEnvironment

	| trait |
	
	trait := RG2MetaclassTraitDefinition unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait baseTrait.
	
	
	
	
