as yet unclassified
ensureOriginIdOf: anRG2Object in: idsDictionary 
	
	^ idsDictionary keyAtValue: anRG2Object ifAbsent: [ 
			anRG2Object  ]

