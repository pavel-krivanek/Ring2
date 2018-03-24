tests
testNewGlobalVariable

	| classVariable | 
	classVariable  := RGGlobalVariable named: #SomeGlobalVariable..
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolvedName).
	self assert: (classVariable isGlobalVariable).


	