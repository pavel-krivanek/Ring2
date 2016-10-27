tests
testStandardMetaclassTrait

	| importer trait | 
	
	importer := Ring2ChunkImporter new.
	
	importer fileInFrom: 'TBehavior classTrait
	uses: {}' readStream.

	trait := importer environment ask behaviorNamed: #'TBehavior classTrait'.
	self assert: trait notNil.
	self assert: trait isMetaclassTrait.
	self assert: trait traitComposition transformations isEmpty.
