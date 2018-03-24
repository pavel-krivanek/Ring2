as yet unclassified
authorForStamp: stamp
	
	^ stamp isEmptyOrNil
		ifTrue: [ '<historical>']
		ifFalse: [ stamp substrings first].