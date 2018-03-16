tests
testClassSide
	
	| behavior |
	behavior := RG2Class unnamed.
	self assert: behavior classSide == behavior metaclass. 
	self assert: behavior metaclass classSide == behavior metaclass. 
	