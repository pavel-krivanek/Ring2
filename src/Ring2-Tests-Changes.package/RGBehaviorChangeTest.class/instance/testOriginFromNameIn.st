tests
testOriginFromNameIn

	| class class2 change |
	
	class := RGClass named: #SomeClass.
	class2 := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: (change originFromNameIn: class2 environment) equals: class2.