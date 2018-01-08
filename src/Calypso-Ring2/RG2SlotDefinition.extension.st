Extension { #name : #RG2SlotDefinition }

{ #category : #'*Calypso-Ring2' }
RG2SlotDefinition >> definitionString [
	"for Slots, the printString is the defintion"
	^self printString
]

{ #category : #'*Calypso-Ring2' }
RG2SlotDefinition >> isReadIn: aCompiledCode [
	^aCompiledCode readsSlot: self
]

{ #category : #'*Calypso-Ring2' }
RG2SlotDefinition >> isWrittenIn: aCompiledCode [
	^aCompiledCode writesSlot: self
]
