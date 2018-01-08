Extension { #name : #RG2GlobalVariableDefinition }

{ #category : #'*Ring2-Bootstrap' }
RG2GlobalVariableDefinition >> isGlobalClassNameBinding [
	^ (self value isClass or: [ self value isTrait ])
		and: [ self variable key == self value name ]
]
