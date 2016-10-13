tests
testImplicitEnvironment
	
	| def def2 env |

	def := RG2ProtocolDefinition unnamed.
	env := def environment.

	self checkImplicitSingleClassEnvironmentOf: def parent.	
	self assert: def parent localMethods size equals: 0.
	self assert: def parent protocols size equals: 1.
	self assert: (def parent resolvedProperties includes: #protocols).
	self assert: (def parent protocols anyOne == def).
	self assert: def parent protocols anyOne name equals: 'as yet unclassified'.

	self assert: (def isRing2Resolved).
	
	def2 := RG2ProtocolDefinition named: #someProtocol parent: def parent.
	self assert: (def2 parent == def parent).
	def2 parent addProtocol: def2.
	self checkImplicitSingleClassEnvironmentOf: def2 parent.	

	self assert: def2 parent protocols size equals: 2.
