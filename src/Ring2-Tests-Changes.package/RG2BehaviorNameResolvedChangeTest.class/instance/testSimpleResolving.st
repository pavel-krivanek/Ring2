tests
testSimpleResolving

	| class change |
	
	class := RG2Class unresolved.
	change := RG2BehaviorNameResolvedChange for: class newName: #NewName.
	class name: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	