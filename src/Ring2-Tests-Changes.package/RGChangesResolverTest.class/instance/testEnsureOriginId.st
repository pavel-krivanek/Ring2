tests
testEnsureOriginId
	
	| id class |
	
	class := env ensureClassNamed: #SomeClass.
	id := resolver ensureOriginId: class.
	
	self assert: id notNil.
	self assert: (resolver originFor: id) equals: class.
