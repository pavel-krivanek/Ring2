*Ring2-Compatibility
asRing2DefinitionIn: aRG2Environment

	| pkg parent|
	
	pkg := self asRing2MinimalDefinitionIn: aRG2Environment.
	
	parent := pkg findSuitableParentIn: aRG2Environment.
	pkg parent: parent.
	
	^ pkg