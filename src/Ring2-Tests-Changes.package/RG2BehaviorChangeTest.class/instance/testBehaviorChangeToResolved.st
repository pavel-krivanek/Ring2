tests
testBehaviorChangeToResolved

	| class class2 change |
	
	class := RG2Behavior newClass.
	class2 := RG2Class named: #SomeClass.
	change := RG2BehaviorChange for: class.
	change behavior: class2.
	self assert: change hasResolvedOrigin 
	