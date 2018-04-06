tests - revert
testRevertOnClassInEmptyEnvironment

	| class emptyEnvironment change  |
	
	class := RGClass named: #SomeName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		
