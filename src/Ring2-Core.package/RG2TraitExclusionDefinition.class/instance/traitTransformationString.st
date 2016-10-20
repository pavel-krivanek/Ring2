as yet unclassified
traitTransformationString

	^ String streamContents: [:aStream |	
		aStream 
			nextPutAll: self subject name;
			space;
			nextPut: $-;
			space;
			nextPut: ${.
	self aliases do: [:each | aStream print: each]
		separatedBy: [aStream nextPutAll: '. '].
	aStream nextPut: $}].