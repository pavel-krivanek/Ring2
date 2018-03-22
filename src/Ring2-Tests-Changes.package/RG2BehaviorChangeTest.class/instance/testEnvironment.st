tests
testEnvironment

	| class change |
	
	class := RG2Behavior newClass.
	change := RG2BehaviorChange for: class.
	self assert: change environment equals: class environment.
	