as yet unclassified
traitNamed: traitName
	"Retrieves an RG2Trait object. The traitName could be theMetaClass name"
	| trait |
	
	^(trait:= self classOrTraitNamed: traitName) isTrait
		ifTrue:[ trait ]
		ifFalse:[ nil ]