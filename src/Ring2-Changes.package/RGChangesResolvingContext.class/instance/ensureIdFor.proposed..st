initialization
ensureIdFor: anRGObject proposed: proposedId

	^ proposedId
		ifNotNil: [ 
			idsDictionary at: proposedId put: anRGObject.
			proposedId ]
		ifNil: [ 
			idsDictionary keyAtValue: anRGObject ifAbsent: [ 
				| newId |
				newId := self newId.
				idsDictionary at: newId put: anRGObject.
				newId ] ]

