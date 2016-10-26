private
createBehavior: subclassName superclassName: superclassName instanceVariableNames: instanceVariableNames classVariableNames: classVariableNames categoryName: categoryName packageName: packageName poolDictionariesNames: poolDictionariesNames layoutClass: layoutClass layoutDefinition: layoutDefinition slotsDefinition: slotsDefinition traits: traitsDefinition isTrait: isTrait

	| behavior superclass |
	
	self assert: superclassName notNil.
	self assert: subclassName notNil.	

	isTrait 
		ifTrue: [ 
			superclass := nil.
			behavior := (superclassName endsWith: ' classTrait') 
				ifTrue: [ 
					behavior := self environment ensureMetaclassTraitNamed: subclassName ]
				ifFalse: [ 
					self assert: (superclassName = #Trait).
					behavior := self environment ensureTraitNamed: superclassName ]]
		ifFalse: [ 
			superclass := self environment ensureClassNamed: superclassName.
			behavior := self environment ensureClassNamed: subclassName. 
			behavior superclass: superclass. ].
		
	instanceVariableNames ifNotNil: [ 
		self halt.
		behavior instanceVariables: (instanceVariableNames substrings collect: #asSymbol)].

	classVariableNames ifNotNil: [ 
		behavior classVariables: (classVariableNames substrings collect: #asSymbol) ].

	poolDictionariesNames ifNotNil: [ 
		behavior sharedPools: (poolDictionariesNames substrings collect: #asSymbol)].

	categoryName ifNotNil: [ 
		behavior category: categoryName ].

	packageName ifNotNil: [ 
		| pkg |
		pkg := environment ensurePackageNamed: packageName.
		behavior package: package ].
	
	layoutClass ifNotNil: [ 
		behavior layout: (layoutClass parent: behavior).
		"TODO: unknown layout definition"].

	slotsDefinition ifNotNil: [ 
		behavior layout layout: (layoutClass parent: behavior).
		"TODO: unknown slots definition"].
	
	traitsDefinition ifNotNil: [ 
		| composition transformations |
		composition := RG2TraitCompositionDefinition parent: behavior.
		transformations := RG2TraitCompositionVisitor new parse: traitsDefinition for: composition.
		behavior traitComposition: composition.
		transformations do: [ :each |
			composition addTransformation: each ].
		].
	