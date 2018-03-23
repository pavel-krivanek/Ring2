testing
testReverseOnClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RG2Class named: #SomeName.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorAddition for: class.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RG2NotFoundError.
		
