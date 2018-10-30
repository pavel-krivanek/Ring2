Extension { #name : #RGClassVariable }

{ #category : #'*Ring2-Hermes' }
RGClassVariable >> asExportedLiteral [
	^ HEClassVariable for: self
]

{ #category : #'*Ring2-Hermes' }
RGClassVariable >> emitStore: methodBuilder [

	methodBuilder storeIntoLiteralVariable: self.


]

{ #category : #'*Ring2-Hermes' }
RGClassVariable >> emitValue: methodBuilder [

	methodBuilder pushLiteralVariable: self.
]
