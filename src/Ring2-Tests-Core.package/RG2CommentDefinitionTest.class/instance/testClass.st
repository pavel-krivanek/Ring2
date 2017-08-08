tests
testClass

	| environment aClass aPackage aComment |
	
	environment := RG2Environment new.
	aClass := environment ensureClassNamed: #SomeClass.
	aPackage := environment ensurePackageNamed: #SomePackage.
	aClass package: aPackage.
	aComment := RG2CommentDefinition parent: aClass.
	aClass comment: aComment.
	self assert: aComment package equals: aPackage.
	
	self assert: aComment fullName equals: 'SomeClass comment'.
