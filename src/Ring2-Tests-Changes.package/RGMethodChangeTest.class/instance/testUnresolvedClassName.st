tests
testUnresolvedClassName

	"test if we chan make a change a method owned by an unresolved class"

	| class method change  |
	
	class := RGClass unresolved.
	method := class ensureLocalMethodNamed: #someMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName isNil.
	self assert: change methodName equals: #someMethod.
	self deny: change hasResolvedOriginName 
	