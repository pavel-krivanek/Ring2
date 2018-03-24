tests
testNewClassVariable

	| classVariable | 
	classVariable  := RGClassVariable unnamed.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasUnresolved: #name).
	self assert: (classVariable isVariableDefinition).
	self assert: (classVariable isClassVariable).	
	self deny: (classVariable isPoolVariable).	

	classVariable  := RGClassVariable named: #SomeClassVariable.
	self assert: (classVariable isRing2Resolved).
	self assert: (classVariable hasResolvedAll: #(name)).
	self assert: classVariable name equals: #SomeClassVariable.
	self assert: (classVariable isClassVariable).
	self assert: (classVariable isClassVariable).	
	