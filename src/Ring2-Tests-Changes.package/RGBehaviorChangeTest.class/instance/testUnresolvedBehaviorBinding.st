tests
testUnresolvedBehaviorBinding

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self assert: change behavior equals: class.
	