as yet unclassified
ensureClassNamed: aSymbol

	self assert: (aSymbol endsWith: ' classTrait') not.

	^ self ask behaviorNamedExactlyAs: aSymbol ifAbsent: [ 
		 | behaviorClass newBehavior sibling siblingName |
		siblingName := (aSymbol endsWith: ' class') 
			ifTrue: [ aSymbol withoutSuffix: ' class' ]
			ifFalse: [ (aSymbol, 'class') asSymbol ].
				
			sibling := self ask behaviors detect: [ :each | each name = siblingName ] ifNone: nil.
			sibling ifNotNil: [ 
				| result |
				result := sibling isMetaclass 
					ifTrue: [ sibling baseClass ]
					ifFalse: [ sibling metaclass ].
				result name: aSymbol.
				result propertyNamed: #resolved put: true.
				^ result ].
			
			behaviorClass := (aSymbol endsWith: ' class') 
				ifFalse: [ RG2ClassOld ]
				ifTrue: [ RG2MetaclassOld ].
			newBehavior := behaviorClass named: aSymbol parent: self.
			self addBehavior: newBehavior.
			newBehavior ] 