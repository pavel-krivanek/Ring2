resolving
makeResolved

	super makeResolved.
	
	superclass := self superclass.
	localMethods := self localMethods.
	protocols := self protocols.
	traitComposition := self traitComposition.
	metaclass := self metaclass.
	
