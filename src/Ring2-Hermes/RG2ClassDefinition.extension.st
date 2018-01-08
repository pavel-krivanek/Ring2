Extension { #name : #RG2ClassDefinition }

{ #category : #'*Ring2-Hermes' }
RG2ClassDefinition >> acceptVisitor: aVisitor [ 
	^ aVisitor visitClass: self
]

{ #category : #'*Ring2-Hermes' }
RG2ClassDefinition >> classLayout [
	"TODO"
	^ layout"
		ifNil: [ 
			| superLayout scope |
			superLayout := superclass classLayout.
			scope := superLayout slotScope extend.
			layout := superLayout class extending: superLayout scope: scope host: self ]"
]
