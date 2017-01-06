tests
testTrait

	| env trait |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	trait := TBehavior asRing2MinimalDefinitionIn: env.
	self assert: trait isTrait.
	self assert: trait isMeta not.
	self assert: trait name equals: #TBehavior.
	self assert: trait classTrait name equals: 'TBehavior classTrait'.
	self assert: trait category equals: 'Traits-Kernel-Traits'.
	self assert: (trait superclass == trait). "cycle, nil in reality"
	self assert: trait comment content equals: TBehavior organization comment.
	self assert: trait localMethods size equals: TBehavior localMethods size.
	self assert: trait protocols asSortedCollection equals: TBehavior protocols asSortedCollection.
	self assert: trait metaclass name equals: #Trait.
	self assert: trait package name equals: #Traits.
	
