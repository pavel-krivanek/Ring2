initialization
newId

	| anId | 
	
	anId := lastId + 1.
	
	[ idsDictionary includesKey: anId ] whileTrue: [ anId := anId + 1 ].

	lastId := anId.

	^ anId
	