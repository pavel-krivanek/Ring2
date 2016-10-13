as yet unclassified
ensureClassNamed: aSymbol

	^ self ask behaviors 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | behaviorClass newBehavior |
				behaviorClass := (aSymbol endsWith: ' class') 
					ifFalse: [ RG2ClassDefinition ]
					ifTrue: [ RG2MetaclassDefinition ].
				newBehavior := behaviorClass named: aSymbol parent: self.
				self addBehavior: newBehavior.
				newBehavior ] 