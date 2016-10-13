tests
testDefinitionsIdentity

	| env1 |
	
	env1 := RG2Environment new.
	
	self assert: (((Object>>#isRing2Object) ensureRing2DefinitionIn: env1) == ((Object>>#isRing2Object) ensureRing2DefinitionIn: env1)).
	
	self assert: (((Object>>#isRing2Object) ensureRing2DefinitionIn: env1) parent
== ((Object>>#isRing2Object) ensureRing2DefinitionIn: env1) parent).