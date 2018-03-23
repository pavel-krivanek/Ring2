testing
testSimpleAdditionWithUnresolvedName

	| env class change |
	
	class := RG2Behavior newClass.
	change := RG2BehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	