tests
testUnresolvedMethodAndClass

	| class method change  |
	
	class := RGClass unresolved.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodChange for: method.
	self assert: change behaviorName isNil.
	self assert: change methodName isNil.
	self deny: change hasResolvedOriginName 
	