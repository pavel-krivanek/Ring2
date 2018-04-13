*Calypso-Ring2
definitionString

	^ String streamContents: [ :aStream |
		aStream nextPutAll: '#'; nextPutAll: self name]