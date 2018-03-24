*Ring2-Compatibility
asRing2DefinitionIn: aRGEnvironment

	| pkg parent|
	
	pkg := self asRing2MinimalDefinitionIn: aRGEnvironment.
	
	parent := pkg findSuitableParentIn: aRGEnvironment.
	pkg parent: parent.
	
	^ pkg