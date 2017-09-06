*Ring2-RuntimeSupport
allSuperclasses

	| temp |
	^ ((self superclass == nil) or: [ self superclass == self ])
		ifTrue: [ OrderedCollection new]
		ifFalse: [temp := self superclass allSuperclasses.
			temp addFirst: self superclass.
			temp] 