tests
testUnresolvedBehaviorBinding

	| class change |
	
	class := RG2Behavior newClass.
	change := RG2BehaviorChange for: class.
	self assert: change behavior equals: class.
	