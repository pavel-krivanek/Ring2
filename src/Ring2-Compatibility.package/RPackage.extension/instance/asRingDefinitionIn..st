*Ring2-Compatibility
asRingDefinitionIn: anRGEnvironment

	| pkg parent|
	
	pkg := self asRingMinimalDefinitionIn: anRGEnvironment.
	
	parent := pkg findSuitableParentIn: anRGEnvironment.
	pkg parent: parent.
	
	^ pkg