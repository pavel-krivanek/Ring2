tests
testCreationOfDefinitions

	| env1 method |
	
	env1 := RGEnvironment new.
	
	"self should: [ (Object>>#isRing2Object) asRing2DefinitionIn: env1 ] raise: RGNotFoundError."
	method := (Object>>#isRGObject) ensureRing2DefinitionIn: env1.
	self assert: method class equals: RGMethod.	
	self assert: method selector equals: #isRGObject.
	self assert: method parent name equals: #Object.
	self assert: (method environment == env1).
	

