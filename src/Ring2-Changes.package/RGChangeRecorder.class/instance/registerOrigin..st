accessing
registerOrigin: anObject
	
	| id |

	id := self origins at: anObject ifAbsentPut: [ self nextId ].
	idsDictionary at: id ifAbsentPut: [ anObject ].
	
	^ id