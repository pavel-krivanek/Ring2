Extension { #name : #RGGlobalVariable }

{ #category : #'*Ring2-Bootstrap' }
RGGlobalVariable >> isGlobalClassNameBinding [
	^ (self value isClass or: [ self value isTrait ])
		and: [ self variable key == self value name ]
]
