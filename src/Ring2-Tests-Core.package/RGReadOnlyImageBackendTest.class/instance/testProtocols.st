tests
testProtocols

	| env1 point method method2 protocol protocol2 |
	
	env1 := RGEnvironment new.
	env1 backend: (RGReadOnlyImageBackend for: env1).
	
	point := Point asRing2MinimalDefinitionIn: env1.
	self assert: (point protocols notEmpty).
	protocol := point protocols detect: [ :each | each = 'accessing' ].
	self assert: (protocol isSymbol).
	
	method := (Point>>#x) asRing2MinimalDefinitionIn: env1.
	protocol := method protocol.
	method2 := (Point>>#y) asRing2MinimalDefinitionIn: env1.
	protocol2 := method2 protocol.
	
	self assert: (protocol == protocol2).
	self assert: (protocol isSymbol).
	self assert: protocol equals: 'accessing'.
	
	self should: [ (Protocol name: 'aProtocol') asRing2MinimalDefinitionIn: RGEnvironment new ] raise: Error.