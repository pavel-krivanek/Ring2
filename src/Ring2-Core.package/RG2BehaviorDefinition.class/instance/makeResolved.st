resolving
makeResolved

	super makeResolved.
	
	superclass := self superclass.
	localMethods := self localMethods asSet.
	protocols := self protocols.
	traitComposition := self traitComposition.
	metaclass := self metaclass.
	tagsForMethods := self tagsForMethods.
	tags := self tags.	
