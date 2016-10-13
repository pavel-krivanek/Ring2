tests
testNewMetaclassTrait

	| trait baseTrait | 
	trait  := RG2MetaclassTraitDefinition unnamed.
	self assert: (trait isRing2Resolved).
	self assert: (trait unresolvedProperties includesAll: #(baseTrait)).
	self assert: (trait isTrait).
	
	baseTrait  := RG2TraitDefinition parent: trait environment.
	trait baseTrait: baseTrait.
	self assert: (trait resolvedProperties includes: #baseTrait).
	self assert: (trait baseTrait == baseTrait).
