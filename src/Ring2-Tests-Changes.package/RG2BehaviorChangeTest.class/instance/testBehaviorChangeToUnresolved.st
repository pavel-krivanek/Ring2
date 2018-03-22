tests
testBehaviorChangeToUnresolved

	| class class2 change |
	
	class := RG2Class named: #SomeClass.
	class2 := RG2Behavior newClass.
	change := RG2BehaviorChange for: class.
	change behavior: class2.
	self deny: change behavior hasResolvedOrigin 
	