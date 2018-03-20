tests
testDefinition

	| aClass |
	
	aClass := RG2Class named: #SomeClass.
	aClass superclass name: #Object.
	
	self assert: (aClass definition beginsWith: 'Object subclass: #SomeClass')	
