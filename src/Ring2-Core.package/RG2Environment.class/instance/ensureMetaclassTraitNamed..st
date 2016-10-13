as yet unclassified
ensureMetaclassTraitNamed: aSymbol

	| found newTrait newMetaclassTrait |

	found := self ask behaviors 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | behaviorClass newBehavior |
				behaviorClass := RG2MetaclassTraitDefinition.
				newBehavior := behaviorClass named: aSymbol parent: self.
				self addBehavior: newBehavior.
				newBehavior ].
			
	found isTrait ifTrue: [ ^ found ].

	"it is possible that we created the this metaclass trait before as a metaclass because correct behavior type was not known."
	
	newMetaclassTrait := found pvtAsMetaclassTrait.
	newTrait := found baseTrait.
	found becomeForward: newMetaclassTrait.
	found metaclass becomeForward: newMetaclassTrait.
	^ found 		