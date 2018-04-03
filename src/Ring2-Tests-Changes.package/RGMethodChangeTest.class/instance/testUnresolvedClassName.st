tests
testUnresolvedClassName

	| class method change  |
	
	class := RGClass unresolved.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName isNil.
	self assert: change methodName equals: #someMethod.
	self deny: change hasResolvedOriginName 
	