tests
testClean

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	
	self assert: change pvtBehavior equals: class.
	change clean.
	self assert: change pvtBehavior equals: nil.
	