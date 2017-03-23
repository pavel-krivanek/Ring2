tests
testUnifyMetaclass

	| env class1 class2 | 
	
	env := RG2Environment new.
	class1 := env ensureClassNamed: 'SomeClass1'.
	class2 := env ensureClassNamed: 'SomeClass2'.
	self assert: env ask behaviors size equals: 8. "only pre-check"
	
	self deny: (class1 metaclass metaclass == class2 metaclass metaclass).
	env unifyMetaclass: nil.
	self assert: (class1 metaclass metaclass == class2 metaclass metaclass).

	
	
	
