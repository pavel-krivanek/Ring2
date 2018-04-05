visiting
visitChange: anRGChange of: anRGObject
	| changeCopy id |
	changeCopy := anRGChange copyForEnvironment: self environment.
	id := nil.
	anRGObject
		ifNotNil: [ id := self ensureOriginId: anRGObject.
			changeCopy hasResolvedOriginName
				ifTrue: [ lastKnownPaths at: id put: changeCopy path ]
				ifFalse: [ lastKnownPaths
						at: id
						ifPresent: [ :knownPath | changeCopy setPath: knownPath ] ] ]
		ifNil: [ 
			id := changeCopy hasResolvedOriginName
				ifTrue: [ lastKnownPaths
						keyAtValue: changeCopy path
						ifAbsent: [ | newId |
							newId := self newID.
							lastKnownPaths at: newId put: changeCopy path.
							newId ] ]
				ifFalse: [ self newID ] ].
	changeCopy originId: id.
	^ changeCopy