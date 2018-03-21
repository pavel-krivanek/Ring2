tests
testImplicitEnvironment
	
	| def def2 env |

	def := RG2TraitComposition unnamed.
	env := def environment.

	self checkImplicitSingleClassEnvironmentOf: def parent.	

	self assert: (def isRing2Resolved).
	
	def2 := RG2TraitComposition parent: def parent .
	self checkImplicitSingleClassEnvironmentOf: def parent.	
