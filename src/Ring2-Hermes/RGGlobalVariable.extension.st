Extension { #name : #RGGlobalVariable }

{ #category : #'*Ring2-Hermes' }
RGGlobalVariable >> asExportedLiteral [
	^ HEGlobalVariable for:self.
]

{ #category : #'*Ring2-Hermes' }
RGGlobalVariable >> emitStore: methodBuilder [
	methodBuilder storeIntoLiteralVariable: self.


]

{ #category : #'*Ring2-Hermes' }
RGGlobalVariable >> emitValue: methodBuilder [
	methodBuilder pushLiteralVariable: self.
]
