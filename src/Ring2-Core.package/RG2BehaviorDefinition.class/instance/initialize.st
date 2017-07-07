initialization
initialize

	super initialize.
	
	"use unresolved value for superclassto avoid infinite recursion. It needs to be set later"
	superclass := RG2UnresolvedValue recursive. 
	localMethods := self unresolvedValue: self defaultLocalMethods.
	protocols := self unresolvedValue: self defaultProtocols.
	traitComposition := self unresolvedValue: self defaultTraitComposition.
	tagsForMethods := self unresolvedValue: self defaultTagsForMethods.	
	tags := self unresolvedValue: self defaultTags.	
