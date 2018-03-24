pointer layout
slotsFor: anRGLayout do: aBlock
	| realClass |
	realClass := self realBehaviorFor: anRGLayout parent.
	realClass classLayout slots
		do: [ :each | 
			| def |
			def := self
				definitionFor: each
				ifAbsentRegister: [ each asRing2MinimalDefinitionIn: anRGLayout environment ].
			aBlock value: def ]