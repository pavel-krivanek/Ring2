tests
testEnvironment

	"test if we can change the change environment"

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self assert: change environment equals: class environment.
	