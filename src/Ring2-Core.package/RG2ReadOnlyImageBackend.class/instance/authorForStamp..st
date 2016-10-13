as yet unclassified
authorForStamp: stamp
	
	^ stamp
		ifNil: [ '<historical>']
		ifNotNil: [ stamp substrings first].