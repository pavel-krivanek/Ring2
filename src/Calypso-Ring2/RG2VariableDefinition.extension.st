Extension { #name : #RG2VariableDefinition }

{ #category : #'*Calypso-Ring2' }
RG2VariableDefinition >> definitionString [
	"non special globals are defined by the symbol"
	^self isSpecial
		ifTrue: [super definitionString]
		ifFalse: [self name printString]

]

{ #category : #'*Calypso-Ring2' }
RG2VariableDefinition >> isReadIn: aCompiledCode [
"TODO"
	^aCompiledCode readsSlot: self
]

{ #category : #'*Calypso-Ring2' }
RG2VariableDefinition >> isWrittenIn: aCompiledCode [

"TODO"
	^aCompiledCode writesSlot: self
]
