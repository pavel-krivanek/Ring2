tests
testBasicCreation

	| class method change  |
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName equals: #SomeClass.
	self assert: change methodName equals: #someMethod.
	self assert: change hasResolvedOriginName 
	