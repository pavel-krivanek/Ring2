tests
testMetaclassTraitImplicitEnvironment

	| trait |
	
	trait := RG2MetaclassTrait unnamed.
	self assert: (trait hasUnresolved: #name).
	self checkImplicitSingleTraitEnvironmentOf: trait baseTrait.
	
	
	
	
