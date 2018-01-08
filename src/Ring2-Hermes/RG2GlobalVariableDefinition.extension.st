Extension { #name : #RG2GlobalVariableDefinition }

{ #category : #'*Ring2-Hermes' }
RG2GlobalVariableDefinition >> asExportedLiteral [
	^ HEGlobalVariable for:self.
]

{ #category : #'*Ring2-Hermes' }
RG2GlobalVariableDefinition >> emitStore: methodBuilder [
	methodBuilder storeIntoLiteralVariable: self.


]

{ #category : #'*Ring2-Hermes' }
RG2GlobalVariableDefinition >> emitValue: methodBuilder [
	methodBuilder pushLiteralVariable: self.
]
