initialization
compileANewClassFrom: aString notifying: aController startingFrom: aClass
	
	| importer |
	
	importer := Ring2ChunkImporter new.
	importer environment: self environment.
	importer fileInFrom: (aString, '!') readStream.
	
	^ aClass