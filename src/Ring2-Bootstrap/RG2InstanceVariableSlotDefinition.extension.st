Extension { #name : #RG2InstanceVariableSlotDefinition }

{ #category : #'*Ring2-Bootstrap' }
RG2InstanceVariableSlotDefinition >> accept: anInterpreter assign: aValue inNode: aVariableNode [
	^ anInterpreter write: aValue at: self index named: self name
]

{ #category : #'*Ring2-Bootstrap' }
RG2InstanceVariableSlotDefinition >> definitionString [
	"non special globals are defined by the symbol"
	^self isSpecial
		ifTrue: [super definitionString]
		ifFalse: [self name printString]

]

{ #category : #'*Ring2-Bootstrap' }
RG2InstanceVariableSlotDefinition >> readWith: anInterpreter inNode: aVariableNode [    
	^ anInterpreter readInstVarAt: self index named: name
]
