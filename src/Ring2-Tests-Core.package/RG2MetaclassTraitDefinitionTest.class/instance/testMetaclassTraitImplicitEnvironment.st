tests
testMetaclassTraitImplicitEnvironment

	| trait |
	
	trait := RG2MetaclassTraitOld unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait baseTrait.
	
	
	
	
