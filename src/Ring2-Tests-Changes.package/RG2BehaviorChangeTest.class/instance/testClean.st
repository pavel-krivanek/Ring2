tests
testClean

	| class change |
	
	class := RG2Class named: #SomeClass.
	change := RG2BehaviorChange for: class.
	
	self assert: change pvtBehavior equals: class.
	change clean.
	self assert: change pvtBehavior equals: nil.
	