tests
testStandardClass

	| importer class | 
	
	importer := Ring2ChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SomeClass
			instanceVariableNames: ''var1 var2 var3''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: ''SomePackage''!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class instVarNames size equals: 3.
	self assert: class instVarNames = #(var1 var2 var3).
	self assert: (class instVarNames allSatisfy: #isSymbol).
	self assert: (class hasResolved: #layout).
	self assert: (class layout hasResolved: #slots).
	self assert: (class hasResolved: #classVariables).
	self assert: (class classVariables isEmpty).
	self assert: (class hasResolved: #sharedPools).
	self assert: (class sharedPoolNames isEmpty).
	self assert: class category equals: #SomePackage.
	