tests
testClassTrait

	| env classTrait |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	classTrait := RG2TestTrait classTrait asRing2MinimalDefinitionIn: env.
	self assert: classTrait isTrait.
	self assert: classTrait isMeta.
	self assert: classTrait name equals: 'RG2TestTrait classTrait'.
	self assert: classTrait baseTrait name equals: 'RG2TestTrait'.
	self assert: classTrait category equals: 'Ring2-Tests-Core'.
	self assert: (classTrait superclass == classTrait). "cycle, nil in reality"
	self assert: classTrait comment content equals: RG2TestTrait organization comment.
	self assert: classTrait localMethods size equals: RG2TestTrait classTrait localMethods size.
	self assert: classTrait protocols asSortedCollection equals: RG2TestTrait classTrait protocols asSortedCollection.
	self assert: classTrait metaclass name equals: #ClassTrait.
	self assert: classTrait package name equals: 'Ring2-Tests-Core'.
	
