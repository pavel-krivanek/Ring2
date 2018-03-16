tests
testNewClassVariable

	| classVariable | 
	classVariable  := RG2ClassVariable unnamed.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasUnresolved: #name).
	self assert: (classVariable isVariableDefinition).
	self assert: (classVariable isClassVariable).	
	self deny: (classVariable isPoolVariable).	

	classVariable  := RG2ClassVariable named: #SomeClassVariable.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolvedAll: #(name)).
	self assert: classVariable name equals: #SomeClassVariable.
	self assert: (classVariable isClassVariable).
	self assert: (classVariable isClassVariable).	
	