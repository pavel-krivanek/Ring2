tests
testDefinitionsIdentity

	| env1 |
	
	env1 := RG2Environment new.
	
	self assert: (((Object>>#isRGObject) ensureRing2DefinitionIn: env1) == ((Object>>#isRGObject) ensureRing2DefinitionIn: env1)).
	
	self assert: (((Object>>#isRGObject) ensureRing2DefinitionIn: env1) parent
== ((Object>>#isRGObject) ensureRing2DefinitionIn: env1) parent).