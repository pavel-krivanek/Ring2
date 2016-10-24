tests
testNewGlobalVariable

	| classVariable | 
	classVariable  := RG2GlobalVariableDefinition named: #SomeGlobalVariable..
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolved: #name).
	self assert: (classVariable isGlobalVariable).


	