tests
testClass

	| environment aClass aPackage aComment |
	
	environment := RG2Environment new.
	aClass := environment ensureClassNamed: #SomeClass.
	aPackage := environment ensurePackageNamed: #SomePackage.
	aClass package: aPackage.
	aComment := RG2Comment parent: aClass.
	aComment content: 'some comment'.
	self deny: aClass hasComment.
	aClass comment: aComment.
	self assert: aComment package equals: aPackage.
	self assert: aClass hasComment.
	
	self assert: aComment fullName equals: 'SomeClass comment'.
