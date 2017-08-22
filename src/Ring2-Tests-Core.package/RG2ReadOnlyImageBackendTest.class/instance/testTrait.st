tests
testTrait

	| env trait |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	trait := RG2TestTrait asRing2MinimalDefinitionIn: env.
	self assert: trait isTrait.
	self assert: trait isMeta not.
	self assert: trait name equals: #RG2TestTrait.
	self assert: trait classTrait name equals: 'RG2TestTrait classTrait'.
	self assert: trait category equals: 'Ring2-Tests-Core'.
	self assert: (trait superclass == trait). "cycle, nil in reality"
	self assert: trait comment content equals: RG2TestTrait organization comment.
	self assert: trait localMethods size equals: RG2TestTrait localMethods size.
	self assert: trait protocols asSortedCollection equals: RG2TestTrait protocols asSortedCollection.
	self assert: trait metaclass name equals: #Trait.
	self assert: trait package name equals: 'Ring2-Tests-Core'.
	
