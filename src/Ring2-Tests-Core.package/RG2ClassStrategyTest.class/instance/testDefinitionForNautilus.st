tests
testDefinitionForNautilus

	| aClass |
	
	aClass := RG2Class named: #SomeClass.
	aClass superclass name: #Object.
	
	self assert: (aClass definitionForNautilus beginsWith: 'Object subclass: #SomeClass')	
