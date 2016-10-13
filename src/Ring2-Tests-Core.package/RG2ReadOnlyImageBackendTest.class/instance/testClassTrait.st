tests
testClassTrait

	| env classTrait |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	classTrait := TBehavior classTrait asRing2MinimalDefinitionIn: env.
	self assert: classTrait isTrait.
	self assert: classTrait isMeta.
	self assert: classTrait name equals: #'TBehavior classTrait'.
	self assert: classTrait baseTrait name equals: 'TBehavior'.
	self assert: (classTrait superclass == classTrait). "cycle, nil in reality"
	self assert: classTrait localMethods size equals: TBehavior classTrait localMethods size.
	self assert: (classTrait protocols collect: #name) asSortedCollection equals: TBehavior classTrait protocols asSortedCollection.
	self assert: classTrait metaclass name equals: #ClassTrait.
	
