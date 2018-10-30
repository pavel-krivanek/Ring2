Extension { #name : #RGMethod }

{ #category : #'*Ring2-Hermes' }
RGMethod >> acceptVisitor: aVisitor [ 
	^ aVisitor visitMethod: self
]

{ #category : #'*Ring2-Hermes' }
RGMethod >> header [

	^ 7
]
