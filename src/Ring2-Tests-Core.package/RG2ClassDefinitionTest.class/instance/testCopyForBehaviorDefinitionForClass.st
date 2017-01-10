tests
testCopyForBehaviorDefinitionForClass

	"test copying for instance variables from RG2ClassDefinition"
	
	| env aClass copy classVariable1 sharedPool |
	
	env := RG2Environment new.
	aClass := env ensureClassNamed: #SomeClass.
	sharedPool := env ensureClassNamed: #SomePool.

	classVariable1 := RG2ClassVariableDefinition named: #ClassVariable1 parent: aClass.
	aClass addClassVariable: classVariable1.
	aClass addSharedPool: sharedPool.

	self assert: aClass sharedPools anyOne name equals: #SomePool.
		
	copy := aClass copyForBehaviorDefinition.

	classVariable1 name: #ChangedClassVariable1.
	aClass sharedPools anyOne name: #ChangedSharedPool.
	
	self deny: copy == aClass. 
	self assert: copy classVarNames asArray equals: #(ClassVariable1).
	self assert: (copy classVariables allSatisfy: [ :each | each parent == copy ]).
	
	self assert: copy sharedPools notEmpty.
	self assert: copy sharedPools anyOne name equals: #SomePool.