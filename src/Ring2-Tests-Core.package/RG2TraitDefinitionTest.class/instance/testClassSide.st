tests
testClassSide
	
	| behavior |
	behavior := RG2TraitDefinition unnamed.
	self assert: behavior classSide == behavior classTrait. 
	self assert: behavior classTrait classSide == behavior classTrait. 
	