initialization
compileANewClassFrom: aString notifying: aController startingFrom: aClass
	
	| importer |
	
	importer := RGChunkImporter new.
	importer environment: self environment.
	importer fileInFrom: (aString, '!') readStream.
	
	^ aClass