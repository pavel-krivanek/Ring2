pointer layout
slotsFor: aRGLayout do: aBlock
	| realClass |
	realClass := self realBehaviorFor: aRGLayout parent.
	realClass classLayout slots
		do: [ :each | 
			| def |
			def := self
				definitionFor: each
				ifAbsentRegister: [ each asRing2MinimalDefinitionIn: aRGLayout environment ].
			aBlock value: def ]