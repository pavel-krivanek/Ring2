initialization
initializeUnresolved

	super initializeUnresolved.

	superclass := self.
	localMethods := self unresolvedValue: self defaultLocalMethods.
	protocols := self unresolvedValue: self defaultProtocols.
	traitComposition := self unresolvedValue: self defaultTraitComposition.
