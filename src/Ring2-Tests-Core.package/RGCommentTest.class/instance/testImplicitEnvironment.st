tests
testImplicitEnvironment
	
	| def def2 env |

	def := RGComment unnamed.
	env := def environment.

	self checkImplicitSingleClassEnvironmentOf: def parent.	

	self assert: (def isRing2Resolved).
	
	def2 := RGComment parent: def parent .
	self checkImplicitSingleClassEnvironmentOf: def parent.	
