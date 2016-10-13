as yet unclassified
ensureTraitNamed: aSymbol

	| found newTrait newMetaclassTrait |
	
	found := self ask behaviors 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | behaviorClass newBehavior |
				behaviorClass := (aSymbol endsWith: ' classTrait') 
					ifFalse: [ RG2TraitDefinition ]
					ifTrue: [ RG2MetaclassTraitDefinition ].
				newBehavior := behaviorClass named: aSymbol parent: self.
				self addBehavior: newBehavior.
				newBehavior ].
			
	found isTrait ifTrue: [ ^ found ].
	
	"it is possible that we created the this trait before as a class because correct behavior type
	was not known."

	newTrait := found pvtAsTrait.
	newMetaclassTrait := found metaclass pvtAsMetaclassTrait.
	found becomeForward: newTrait.
	found metaclass becomeForward: newMetaclassTrait.
	^ found 