tests
testCategory

	| aClass |
	
	aClass := RG2Class named: #SomeClass.
	aClass category: 'SomeCategory'.
	self assert: aClass category = 'SomeCategory'
