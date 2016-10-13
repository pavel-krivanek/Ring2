as yet unclassified
traitNamed: traitName
	"Retrieves an RG2TraitDefinition object. The traitName could be theMetaClass name"
	| trait |
	
	^(trait:= self classOrTraitNamed: traitName) isTrait
		ifTrue:[ trait ]
		ifFalse:[ nil ]