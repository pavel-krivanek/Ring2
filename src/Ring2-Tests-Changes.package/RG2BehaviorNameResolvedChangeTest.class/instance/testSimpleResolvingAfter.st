tests
testSimpleResolvingAfter

	| class change |
	
	class := RG2Class unresolved.
	class name: #NewName.
	change := RG2BehaviorNameResolvedChange for: class newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	