tests
testClassSide
	
	| behavior |
	behavior := RG2Trait unnamed.
	self assert: behavior classSide == behavior classTrait. 
	self assert: behavior classTrait classSide == behavior classTrait. 
	