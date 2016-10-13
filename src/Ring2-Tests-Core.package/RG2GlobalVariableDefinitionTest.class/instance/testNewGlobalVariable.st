tests
testNewGlobalVariable

	| classVariable | 
	classVariable  := RG2GlobalVariableDefinition named: #SomeGlobalVariable..
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable resolvedProperties includesAll: #(name)).
	self assert: (classVariable isGlobalVariable).


	