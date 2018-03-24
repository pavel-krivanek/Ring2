public access
evaluate
	
	| importer class createdClass |
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: (definitionString, '!') readStream.
	
	class := importer environment ask behaviors detect: [:each | 
		each isRing2Resolved and: [each superclass isRing2Resolved ]].

	importer := RGChunkImporter new.
	importer environment: environment.
	importer fileInFrom: (definitionString, '!') readStream.
	
	createdClass := environment ask behaviorNamed: class name.

	createdClass superclass metaclass metaclass isRing2Resolved ifTrue: [ 
		environment cleanWithMetaclassNamed: createdClass superclass metaclass metaclass name
		].
	^createdClass