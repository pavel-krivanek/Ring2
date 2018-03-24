testing
testSimpleAdditionWithUnresolvedName

	| env class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	