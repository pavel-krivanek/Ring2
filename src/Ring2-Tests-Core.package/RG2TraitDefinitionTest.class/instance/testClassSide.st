tests
testClassSide
	
	| behavior |
	behavior := RG2TraitOld unnamed.
	self assert: behavior classSide == behavior classTrait. 
	self assert: behavior classTrait classSide == behavior classTrait. 
	