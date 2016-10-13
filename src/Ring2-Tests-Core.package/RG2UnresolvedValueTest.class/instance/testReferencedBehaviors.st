tests
testReferencedBehaviors

	| unresolved | 
	
	unresolved := RG2UnresolvedValue new.
	self assert: unresolved referencedBehaviors isEmpty.