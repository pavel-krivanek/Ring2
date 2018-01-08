Extension { #name : #RG2MethodDefinition }

{ #category : #'*Ring2-Hermes' }
RG2MethodDefinition >> acceptVisitor: aVisitor [ 
	^ aVisitor visitMethod: self
]

{ #category : #'*Ring2-Hermes' }
RG2MethodDefinition >> header [

	^ 7
]
