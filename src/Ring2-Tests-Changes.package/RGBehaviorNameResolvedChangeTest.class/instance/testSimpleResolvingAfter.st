tests
testSimpleResolvingAfter

	| class change |
	
	class := RGClass unresolved.
	class name: #NewName.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	