tests
testClean

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: change behavior equals: class.
	change clean.
	self assert: change behavior equals: nil.
	