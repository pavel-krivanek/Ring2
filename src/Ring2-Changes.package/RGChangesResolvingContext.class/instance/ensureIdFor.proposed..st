initialization
ensureIdFor: aBehavior proposed: proposedId

	^ proposedId
		ifNotNil: [ 
			idsDictionary at: proposedId put: aBehavior.
			proposedId ]
		ifNil: [ 
			idsDictionary keyAtValue: aBehavior ifAbsent: [ 
				| newId |
				newId := self newId.
				idsDictionary at: newId put: aBehavior.
				newId ] ]

