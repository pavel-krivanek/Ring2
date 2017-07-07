tests
testClassSide
	
	| behavior |
	behavior := RG2ClassDefinition unnamed.
	self assert: behavior classSide == behavior metaclass. 
	self assert: behavior metaclass classSide == behavior metaclass. 
	