tests
testNewClassVariable

	| classVariable | 
	classVariable  := RG2ClassVariableDefinition unnamed.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable unresolvedProperties includesAll: #(name)).
	self assert: (classVariable isVariable).
	self assert: (classVariable isClassVariable).	

	classVariable  := RG2ClassVariableDefinition named: #SomeClassVariable.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable resolvedProperties includesAll: #(name)).
	self assert: classVariable name equals: #SomeClassVariable.
	self assert: (classVariable isVariable).
	self assert: (classVariable isClassVariable).	
	