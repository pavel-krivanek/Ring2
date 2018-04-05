testing
testSimpleAdditionWithUnresolvedName

	"test if we can create a change of a unresolved class"
	
	| env class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorAddition for: class.
	
	self assert: change behavior equals: class.
	
	
	
	