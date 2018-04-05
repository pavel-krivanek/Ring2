tests
testEnsureOriginId

	"try to generate and assign a new id"
	
	| id class |
	
	class := env ensureClassNamed: #SomeClass.
	id := resolver ensureOriginId: class.
	
	self assert: id notNil.
	self assert: (resolver originFor: id) equals: class.
