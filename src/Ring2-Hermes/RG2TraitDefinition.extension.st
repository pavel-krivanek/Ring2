Extension { #name : #RG2TraitDefinition }

{ #category : #'*Ring2-Hermes' }
RG2TraitDefinition >> acceptVisitor: aVisitor [ 
	^ aVisitor visitTrait: self
]

{ #category : #'*Ring2-Hermes' }
RG2TraitDefinition >> asExportedLiteral [
	^ HETraitLiteral for: self.
]
