tests
testComment

	| aClass aComment |
	
	aClass := RG2Class named: #SomeClass.
	aComment := RG2Comment parent: aClass.
	aClass comment: aComment.
	
	self assert: (aClass comment == aComment).
