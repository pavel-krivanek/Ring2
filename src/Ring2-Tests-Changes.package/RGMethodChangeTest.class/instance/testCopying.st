tests
testCopying

	| change copy |
	
	change := RGMethodChange for: (self resolvedMethodExample).
	copy := change copyForEnvironment: nil.
	
	self assert: copy behaviorName equals: #SomeClass.
	self assert: copy methodName equals: #someMethod.
	