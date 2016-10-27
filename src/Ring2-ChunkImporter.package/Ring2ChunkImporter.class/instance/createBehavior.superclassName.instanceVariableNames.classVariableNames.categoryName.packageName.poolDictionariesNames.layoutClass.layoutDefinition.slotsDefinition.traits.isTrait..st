private
createBehavior: subclassName superclassName: superclassName instanceVariableNames: instanceVariableNames classVariableNames: classVariableNames categoryName: categoryName packageName: packageName poolDictionariesNames: poolDictionariesNames layoutClass: layoutClass layoutDefinition: layoutDefinition slotsDefinition: slotsDefinition traits: traitsDefinition isTrait: isTrait

	| behavior superclass |
	
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
			superclass := superclassName 
				ifNotNil: [ self environment ensureClassNamed: superclassName. ]
				ifNil: [ nil ].			
			behavior := self environment ensureClassNamed: subclassName. 
			behavior superclass: superclass. ].

	layoutClass ifNotNil: [ 
		behavior layout: (layoutClass parent: behavior).
		"TODO: unknown layout definition"].

	slotsDefinition ifNotNil: [ 
		"TODO: unknown slots definition"].

	"process instance variables after layout and slots"
	instanceVariableNames ifNotNil: [ 
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
		behavior package: pkg ].

	traitsDefinition ifNotNil: [ 
		| composition transformations |
		composition := RG2TraitCompositionDefinition parent: behavior.
		transformations := RG2TraitCompositionVisitor new parse: traitsDefinition for: composition.
		behavior traitComposition: composition.
		transformations do: [ :each |
			composition addTransformation: each ].
		].
	