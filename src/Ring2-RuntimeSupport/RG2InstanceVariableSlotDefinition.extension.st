Extension { #name : #RG2InstanceVariableSlotDefinition }

{ #category : #'*Ring2-RuntimeSupport' }
RG2InstanceVariableSlotDefinition >> emitStore: methodBuilder [

	methodBuilder storeInstVar: self index
]

{ #category : #'*Ring2-RuntimeSupport' }
RG2InstanceVariableSlotDefinition >> emitValue: methodBuilder [

	methodBuilder pushInstVar: self index.

]

{ #category : #'*Ring2-RuntimeSupport' }
RG2InstanceVariableSlotDefinition >> index [

	"TODO!"
	^ self parent parent allSlots indexOf: self
]
