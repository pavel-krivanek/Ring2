visiting
visitMethodContainer: aMethodContainer using: aHEClass
	| instanceMethods classMethods |

	aHEClass category: aMethodContainer category.
	aHEClass traitComposition: aMethodContainer traitComposition asExportedLiteral.
	aHEClass classTraitComposition: aMethodContainer theMetaClass traitComposition asExportedLiteral.

	instanceMethods := aMethodContainer localMethods reject: [:e | e isExtension ].
	classMethods := aMethodContainer theMetaClass localMethods reject: [:e | e isExtension ].

	aHEClass methods: (instanceMethods collect: [ :e | e acceptVisitor: self ]).
	aHEClass classSideMethods: (classMethods collect: [ :e | e acceptVisitor: self])