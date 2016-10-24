tests
testNewClassVariable

	| classVariable | 
	classVariable  := RG2ClassVariableDefinition unnamed.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasUnresolved: #name).
	self assert: (classVariable isVariableDefinition).
	self assert: (classVariable isClassVariable).	

	classVariable  := RG2ClassVariableDefinition named: #SomeClassVariable.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolvedAll: #(name)).
	self assert: classVariable name equals: #SomeClassVariable.
	self assert: (classVariable isClassVariable).
	self assert: (classVariable isClassVariable).	
	