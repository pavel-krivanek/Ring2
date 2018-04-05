tests
testSimpleResolvingAfter

	"test creation of the change after the resolving of the behavior name was done"

	| class change |
	
	class := RGClass unresolved.
	class name: #NewName.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change newName equals: #NewName.
	