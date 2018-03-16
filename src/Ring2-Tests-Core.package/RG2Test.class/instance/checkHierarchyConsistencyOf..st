utilities
checkHierarchyConsistencyOf: aRG2Class

	self assert: (aRG2Class ~~ aRG2Class superclass).
	self assert: (aRG2Class ~~ aRG2Class metaclass).
	self assert: (aRG2Class ~~ aRG2Class superclass metaclass).

	self assert: (aRG2Class superclass ~~ aRG2Class metaclass).
	self assert: (aRG2Class superclass ~~ aRG2Class superclass metaclass).
	self assert: (aRG2Class metaclass ~~ aRG2Class superclass metaclass).

	self assert: (aRG2Class superclass superclass == aRG2Class superclass).
	self assert: (aRG2Class superclass metaclass == aRG2Class metaclass superclass).

	self assert: (aRG2Class superclass metaclass superclass == aRG2Class superclass metaclass).
	self assert: (aRG2Class superclass metaclass metaclass == aRG2Class superclass metaclass).
	
