tests
testUnresolvedBehaviorBinding

	"test if the change can use an unresolved class"

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self assert: change behavior equals: class.
	