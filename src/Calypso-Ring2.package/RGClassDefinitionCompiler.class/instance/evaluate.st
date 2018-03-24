public access
evaluate
	
	| importer class createdClass |
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: (definitionString, '!') readStream.
	
	class := importer environment ask behaviors detect: [:each | 
		each isRingResolved and: [each superclass isRingResolved ]].

	importer := RGChunkImporter new.
	importer environment: environment.
	importer fileInFrom: (definitionString, '!') readStream.
	
	createdClass := environment ask behaviorNamed: class name.

	createdClass superclass metaclass metaclass isRingResolved ifTrue: [ 
		environment cleanWithMetaclassNamed: createdClass superclass metaclass metaclass name
		].
	^createdClass