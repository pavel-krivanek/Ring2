accessing
ensureOriginId: anOrigin

	| id |
	
	id := self originsToIDs at: anOrigin ifAbsentPut: [ self newID ].
	self idsToOrigins at: id put: anOrigin.
		
	^ id