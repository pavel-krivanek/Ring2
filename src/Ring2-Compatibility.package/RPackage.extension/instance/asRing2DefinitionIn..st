*Ring2-Compatibility
asRing2DefinitionIn: anRGEnvironment

	| pkg parent|
	
	pkg := self asRing2MinimalDefinitionIn: anRGEnvironment.
	
	parent := pkg findSuitableParentIn: anRGEnvironment.
	pkg parent: parent.
	
	^ pkg