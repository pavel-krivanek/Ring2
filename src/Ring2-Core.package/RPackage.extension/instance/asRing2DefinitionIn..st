*Ring2-Core
asRing2DefinitionIn: aRG2Environment

	| pkg parent|
	
	pkg := self asRing2Definition.
	
	parent := pkg findSuitableParentIn: aRG2Environment.
	pkg parent: parent.
	
	^ pkg