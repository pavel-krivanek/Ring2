Extension { #name : #RG2ClassVariableDefinition }

{ #category : #'*Ring2-Hermes' }
RG2ClassVariableDefinition >> asExportedLiteral [
	^ HEClassVariable for: self
]

{ #category : #'*Ring2-Hermes' }
RG2ClassVariableDefinition >> emitStore: methodBuilder [

	methodBuilder storeIntoLiteralVariable: self.


]

{ #category : #'*Ring2-Hermes' }
RG2ClassVariableDefinition >> emitValue: methodBuilder [

	methodBuilder pushLiteralVariable: self.
]
