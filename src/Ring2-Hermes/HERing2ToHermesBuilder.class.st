Class {
	#name : #HERing2ToHermesBuilder,
	#superclass : #Object,
	#category : 'Ring2-Hermes'
}

{ #category : #compiling }
HERing2ToHermesBuilder >> compileMethod: aRFiMethod [
	^ OpalCompiler new
		class: aRFiMethod parent;
		source: aRFiMethod sourceCode;
		compile
]

{ #category : #visiting }
HERing2ToHermesBuilder >> visitClass: aClass [
	| aHEClass |
	
	aHEClass := HEClass new.
	self visitMethodContainer: aClass using: aHEClass.

	aHEClass className: aClass name.
	aHEClass superclass: aClass superclass name.
	aHEClass instanceVariables: ((aClass slots collect: #name) joinUsing: ' ').
	aHEClass classInstancevariables: ((aClass metaclass slots collect: #name) joinUsing: ' ').
	aHEClass classVariables: (aClass classPool keys joinUsing: ' ').
	aHEClass sharedPools: ((aClass sharedPools collect: #name) joinUsing: ' ').
	aHEClass layoutClass: aClass layout layoutName.

	aHEClass category: aClass category.
	aHEClass traitComposition: aClass traitComposition asExportedLiteral.
	aHEClass classTraitComposition: aClass theMetaClass traitComposition asExportedLiteral.


	^ aHEClass.
]

{ #category : #visiting }
HERing2ToHermesBuilder >> visitMethod: aMethod [
	| aHEMethod compiledMethod |
	aHEMethod  := HEMethod new.
	aHEMethod name: aMethod selector.
	aHEMethod className: aMethod methodClass name.
	aHEMethod protocol: aMethod protocol.

	compiledMethod := self compileMethod: aMethod.

	aHEMethod fillLiteralsAndBytecode: compiledMethod.
	
	^ aHEMethod
]

{ #category : #visiting }
HERing2ToHermesBuilder >> visitMethodContainer: aMethodContainer using: aHEClass [
	aHEClass category: aMethodContainer category.
	aHEClass traitComposition: aMethodContainer traitComposition asExportedLiteral.
	aHEClass classTraitComposition: aMethodContainer theMetaClass traitComposition asExportedLiteral.

	aHEClass methods: (aMethodContainer localMethods collect: [ :e | e acceptVisitor: self ]).
	aHEClass classSideMethods: (aMethodContainer theMetaClass localMethods collect: [ :e | e acceptVisitor: self])
]

{ #category : #visiting }
HERing2ToHermesBuilder >> visitPackage: aPackage [
	| aHEPackage classDefinedSorted |
	aHEPackage := HEPackage new.

	aHEPackage packageName: aPackage name.

	aHEPackage traits: ((aPackage definedClasses select: #isTrait) collect: [ :e | e acceptVisitor:self ] as: OrderedCollection).

	(aPackage definedClasses reject: #isTrait) do: [ :e | aHEPackage addClass: (e acceptVisitor:self) ].
	aPackage extensionMethods do: [ :e | aHEPackage extensionMethods add: (e acceptVisitor:self) ].
	
	^ aHEPackage.
]

{ #category : #visiting }
HERing2ToHermesBuilder >> visitTrait: aTrait [
	| aHETrait |
	
	aHETrait := HETrait new.
	self visitMethodContainer: aTrait using: aHETrait.

	aHETrait instVarNamed: #traitName put: aTrait name.
	
	^ aHETrait.
]
