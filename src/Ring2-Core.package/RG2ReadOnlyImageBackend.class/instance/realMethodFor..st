as yet unclassified
realMethodFor: aRG2MethodDefinition

	"TODO: should we cache the definition?"
	^ ((self realBehaviorFor: aRG2MethodDefinition parent) >> aRG2MethodDefinition selector)
	
