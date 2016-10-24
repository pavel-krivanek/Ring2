tests
testImplicitEnvironment
	
	| def def2 env |

	def := RG2MethodDefinition unnamed.
	env := def environment.

	self checkImplicitSingleClassEnvironmentOf: def parent.	
	self assert: def parent localMethods size equals: 1.
	self assert: def parent protocols size equals: 1.
	self assert: (def parent hasResolved: #protocols).
	self assert: def parent protocols anyOne isRing2Resolved not.
	self assert: def parent protocols anyOne name equals: 'as yet unclassified'.

	self assert: (def isRing2Resolved).
	
	def2 := RG2MethodDefinition named: #someMethod parent: def parent.
	def2 parent addLocalMethod: def2.
	self checkImplicitSingleClassEnvironmentOf: def parent.	

	self assert: def parent protocols size equals: 1.
	self assert: def2 parent localMethods size equals: 2.
