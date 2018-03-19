tests
testPrinting
	| aClass |
	
	aClass := RG2Class named: 'Object'.
	
	self assert: aClass printString equals: #Object.
	