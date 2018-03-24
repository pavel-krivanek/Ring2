as yet unclassified
checkHierarchyConsistencyOf: aRGClass

	self assert: (aRGClass ~~ aRGClass superclass).
	self assert: (aRGClass ~~ aRGClass metaclass).
	self assert: (aRGClass ~~ aRGClass superclass metaclass).

	self assert: (aRGClass superclass ~~ aRGClass metaclass).
	self assert: (aRGClass superclass ~~ aRGClass superclass metaclass).
	self assert: (aRGClass metaclass ~~ aRGClass superclass metaclass).

	self assert: (aRGClass superclass superclass == aRGClass superclass).
	self assert: (aRGClass superclass metaclass == aRGClass metaclass superclass).

	self assert: (aRGClass superclass metaclass superclass == aRGClass superclass metaclass).
	self assert: (aRGClass superclass metaclass metaclass == aRGClass superclass metaclass).
	
