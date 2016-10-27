tests
testStandardSubclasses

	| importer class | 
	
	importer := Ring2ChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SomeClass!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class superclass name equals: #Object.
	
