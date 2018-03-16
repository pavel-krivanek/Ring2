tests
testClassSide
	
	| behavior |
	behavior := RG2ClassOld unnamed.
	self assert: behavior classSide == behavior metaclass. 
	self assert: behavior metaclass classSide == behavior metaclass. 
	