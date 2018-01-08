Extension { #name : #RG2SlotDefinition }

{ #category : #'*Ring2-Bootstrap' }
RG2SlotDefinition >> emitStore: aMethodBuilder [
	| tempName |
	tempName := Object new.
	aMethodBuilder
		addTemp: tempName;
		storeTemp: tempName;
		popTop;
		pushReceiver;
		pushLiteralVariable: #slot -> self;
		pushTemp: tempName;
		send: #writeSlot:value:
]

{ #category : #'*Ring2-Bootstrap' }
RG2SlotDefinition >> emitValue: aMethodBuilder [
	aMethodBuilder
		pushLiteralVariable: #slot -> self;
		pushReceiver;
		send: #read:
]
