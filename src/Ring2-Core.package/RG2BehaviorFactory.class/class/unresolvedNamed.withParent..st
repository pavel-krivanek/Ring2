instance creation
unresolvedNamed: aString withParent: aRG2Defintion

	^ (RG2Behavior unresolvedNamed: aString withParent: aRG2Defintion)
		behaviorStrategy: self newStrategy;
		yourself