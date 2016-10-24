tests
testBehavior

	| env1 point point2 object method |
	
	env1 := RG2Environment new.
	env1 backend: (RG2ReadOnlyImageBackend for: env1).
	
	point := Point asRing2DefinitionIn: env1.
	"different access method"
	point2 := env1 ask behaviors detect: [ :each | each name == #Point ].
	object := Object asRing2DefinitionIn: env1.
	method := (Point>>#x) asRing2MinimalDefinitionIn: env1.
		
	self assert: (point == point2).
	self assert: (point superclass == object).
	self assert: (point == method parent).
	
	self assert: (point unresolvedProperties size) equals: 0.
	self assert: point ask localMethods size equals: Point localMethods size.
	
	