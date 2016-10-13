utilities
checkHierarchyConsistencyOf: aRG2ClassDefinition

	self assert: (aRG2ClassDefinition ~~ aRG2ClassDefinition superclass).
	self assert: (aRG2ClassDefinition ~~ aRG2ClassDefinition metaclass).
	self assert: (aRG2ClassDefinition ~~ aRG2ClassDefinition superclass metaclass).

	self assert: (aRG2ClassDefinition superclass ~~ aRG2ClassDefinition metaclass).
	self assert: (aRG2ClassDefinition superclass ~~ aRG2ClassDefinition superclass metaclass).
	self assert: (aRG2ClassDefinition metaclass ~~ aRG2ClassDefinition superclass metaclass).

	self assert: (aRG2ClassDefinition superclass superclass == aRG2ClassDefinition superclass).
	self assert: (aRG2ClassDefinition superclass metaclass == aRG2ClassDefinition metaclass superclass).

	self assert: (aRG2ClassDefinition superclass metaclass superclass == aRG2ClassDefinition superclass metaclass).
	self assert: (aRG2ClassDefinition superclass metaclass metaclass == aRG2ClassDefinition superclass metaclass).
	
