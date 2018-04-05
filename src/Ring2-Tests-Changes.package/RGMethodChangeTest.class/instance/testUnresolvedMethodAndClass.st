tests
testUnresolvedMethodAndClass

	"test if we can create a change on an unresolved method owned by an unresolved class"

	| class method change  |
	
	class := RGClass unresolved.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName isNil.
	self assert: change methodName isNil.
	self deny: change hasResolvedOriginName 
	