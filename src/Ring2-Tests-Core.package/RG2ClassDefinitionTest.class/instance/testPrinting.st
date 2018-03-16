tests
testPrinting
	| aClass |
	
	aClass := RG2ClassOld named: 'Object'.
	
	self assert: aClass printString equals: #Object.
	