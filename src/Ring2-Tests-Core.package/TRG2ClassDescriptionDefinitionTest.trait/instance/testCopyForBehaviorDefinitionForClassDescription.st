tests
testCopyForBehaviorDefinitionForClassDescription
	
	| env aClass copy |
	
	env := RG2Environment new.
	aClass := env ensureClassNamed: #SomeClass.
	aClass layout: (RG2ByteLayoutDefinition parent: aClass).
		
	copy := aClass copyForBehaviorDefinition.
	
	self deny: copy == aClass. 
	self deny: copy layout == aClass layout. 
	self assert: copy layout isByteLayout.
	self assert: (copy layout parent == copy).