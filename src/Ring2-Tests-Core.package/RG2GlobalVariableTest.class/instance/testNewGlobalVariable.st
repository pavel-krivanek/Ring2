tests
testNewGlobalVariable

	| classVariable | 
	classVariable  := RG2GlobalVariable named: #SomeGlobalVariable..
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolvedName).
	self assert: (classVariable isGlobalVariable).


	