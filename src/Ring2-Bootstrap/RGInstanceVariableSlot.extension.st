Extension { #name : #RGInstanceVariableSlot }

{ #category : #'*Ring2-Bootstrap' }
RGInstanceVariableSlot >> accept: anInterpreter assign: aValue inNode: aVariableNode [
	^ anInterpreter write: aValue at: self index named: self name
]

{ #category : #'*Ring2-Bootstrap' }
RGInstanceVariableSlot >> definitionString [
	"non special globals are defined by the symbol"
	^self isSpecial
		ifTrue: [super definitionString]
		ifFalse: [self name printString]

]

{ #category : #'*Ring2-Bootstrap' }
RGInstanceVariableSlot >> readWith: anInterpreter inNode: aVariableNode [    
	^ anInterpreter readInstVarAt: self index named: name
]
