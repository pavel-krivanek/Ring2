initialization
ensureIdFor: aBehavior 

	^ idsDictionary keyAtValue: aBehavior ifAbsent: [ 
		| newId |
		newId := self newId.
		idsDictionary at: newId put: aBehavior.
		newId ].
	