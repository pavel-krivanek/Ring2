tests
testBehaviorChangeToUnresolved

	"test if we can assign unresolved class to a change that originally used resolved class"

	| class class2 change |
	
	class := RGClass named: #SomeClass.
	class2 := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	change behavior: class2.
	self deny: change hasResolvedOriginName 
	