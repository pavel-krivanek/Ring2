tests
testProtocols

	| env1 point method method2 protocol protocol2 |
	
	env1 := RG2Environment new.
	env1 backend: (RG2ReadOnlyImageBackend for: env1).
	
	point := Point asRing2DefinitionIn: env1.
	self assert: (point protocols notEmpty).
	protocol := point protocols detect: [ :each | each name = 'accessing' ].
	self assert: (protocol isRing2Object).
	self assert: (protocol isProtocol).
	
	method := (Point>>#x) asRing2DefinitionIn: env1.
	protocol := method protocol.
	method2 := (Point>>#y) asRing2DefinitionIn: env1.
	protocol2 := method2 protocol.
	
	self assert: (protocol == protocol2).
	self assert: (protocol isRing2Object).
	self assert: (protocol isProtocol).	
	self assert: protocol name equals: 'accessing'.
	
	self should: [ (Protocol name: 'aProtocol') asRing2MinimalDefinitionIn: RG2Environment new ] raise: Error.