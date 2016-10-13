tests
testImplicitEnvironment
	
	| def def2 env |

	def := RG2TraitAliasDefinition unnamed.
	env := def environment.

	self assert: (def isRing2Resolved).
		
	self assert: def parent isTraitComposition.
	self assert: def parent isRing2Resolved not.

	self assert: def parent parent isClass.
	self assert: def parent parent isRing2Resolved not.
	
	self assert: def parent transformations size equals: 1.

	self checkImplicitSingleClassEnvironmentOf: def parent parent.	

	def2 := RG2TraitAliasDefinition parent: def parent.
	def parent addTransformation: def2.
	
	self checkImplicitSingleClassEnvironmentOf: def parent parent.	
	
	self assert: def parent transformations size equals: 2.
