tests
testEnvironment

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self assert: change environment equals: class environment.
	