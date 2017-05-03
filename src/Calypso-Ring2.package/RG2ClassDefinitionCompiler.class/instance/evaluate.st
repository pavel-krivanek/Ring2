as yet unclassified
evaluate
	
	| importer class |
	
	importer := Ring2ChunkImporter new.
	
	importer fileInFrom: (definitionString, '!') readStream.
	
	class := importer environment ask behaviors detect: [:each | 
		each isRing2Resolved and: [each superclass isRing2Resolved ]].

	importer := Ring2ChunkImporter new.
	importer environment: environment.
	importer fileInFrom: (definitionString, '!') readStream.
	
	^ environment ask behaviorNamed: class name.
		
	