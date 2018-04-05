tests
testUnresolvedMethodName

	"test if we can create a change on a method with unresolved name. The method is owned by a class with a resolved name"

	| class method change  |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName equals: #SomeClass.
	self assert: change methodName isNil.
	self deny: change hasResolvedOriginName 
	