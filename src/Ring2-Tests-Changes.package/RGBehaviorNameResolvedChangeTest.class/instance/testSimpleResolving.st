tests
testSimpleResolving

	| class change |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	class name: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	