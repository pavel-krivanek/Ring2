testing
testReverseOnClassInEmptyEnvironment

	| class emptyEnvironment change  |
	
	class := RGClass named: #SomeName.
	emptyEnvironment := RGEnvironment new.

	change := (RGBehaviorAddition for: class) resolvedAsStandalone.
	
	self should: [ change reverse: change in: emptyEnvironment ] raise: RGResolvingError.
		
