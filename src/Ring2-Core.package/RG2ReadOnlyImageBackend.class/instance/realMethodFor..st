as yet unclassified
realMethodFor: aRG2Method

	"TODO: should we cache the definition?"
	^ ((self realBehaviorFor: aRG2Method parent) >> aRG2Method selector)
	
