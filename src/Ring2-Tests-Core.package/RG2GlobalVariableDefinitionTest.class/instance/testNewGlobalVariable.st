tests
testNewGlobalVariable

	| classVariable | 
	classVariable  := RG2GlobalVariable named: #SomeGlobalVariable..
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolved: #name).
	self assert: (classVariable isGlobalVariable).


	