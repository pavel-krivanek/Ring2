tests
testCreationOfDefinitions

	| env1 method method2 |
	
	env1 := RG2Environment new.
	
	self should: [ (Object>>#isRing2Object) asRing2DefinitionIn: env1 ] raise: RG2NotFoundError.
	method := (Object>>#isRing2Object) ensureRing2DefinitionIn: env1.
	self assert: method class equals: RG2MethodDefinition.	
	self assert: method selector equals: #isRing2Object.
	self assert: method parent name equals: #Object.
	self assert: (method environment == env1).
	
	method2 := (Object>>#isRing2Object) asRing2Definition.
	self assert: method2 class equals: RG2MethodDefinition.	
	self assert: method2 selector equals: #isRing2Object.
	self assert: method2 parent name equals: #Object.

	self deny: (method2 environment == env1).
