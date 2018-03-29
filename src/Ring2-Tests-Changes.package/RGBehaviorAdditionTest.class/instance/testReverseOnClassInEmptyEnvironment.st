testing
testReverseOnClassInEmptyEnvironment

	| class emptyEnvironment change  |
	
	class := RGClass named: #SomeName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RGResolvingError.
		
