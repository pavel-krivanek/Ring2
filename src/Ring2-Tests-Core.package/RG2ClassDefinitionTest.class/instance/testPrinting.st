tests
testPrinting
	| aClass |
	
	aClass := RG2ClassDefinition named: 'Object'.
	
	self assert: aClass printString equals: #Object.
	