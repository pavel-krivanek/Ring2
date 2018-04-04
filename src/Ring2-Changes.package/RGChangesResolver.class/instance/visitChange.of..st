visiting
visitChange: anRGChange of: anRGObject

	| changeCopy id | 

	changeCopy := anRGChange copyForEnvironment: self environment.
	changeCopy clean.
	id := nil.
	
	anRGObject 
		ifNotNil: [ 
			id := self ensureOriginId: anRGObject.
			changeCopy hasResolvedOriginName
				ifTrue: [ lastKnownPaths at: id put: changeCopy path ] 
				ifFalse: [ 
					lastKnownPaths at: id ifPresent: [ :knownPath |
						changeCopy setPath: knownPath ] ] ]
		ifNil: [ 
			changeCopy hasResolvedOriginName
				ifTrue: [ 
					id := lastKnownPaths keyAtValue: changeCopy path ifAbsent: [ 
						| newId |
						newId := self newID.
						lastKnownPaths at: id put: changeCopy path.
						newId ] ] ].
			
	changeCopy originId: id.	
	
	^ changeCopy.
			
		
	