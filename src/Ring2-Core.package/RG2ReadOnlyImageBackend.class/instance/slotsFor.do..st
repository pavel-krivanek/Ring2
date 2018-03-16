pointer layout
slotsFor: aRG2Layout do: aBlock
	| realClass |
	realClass := self realBehaviorFor: aRG2Layout parent.
	realClass classLayout slots
		do: [ :each | 
			| def |
			def := self
				definitionFor: each
				ifAbsentRegister: [ each asRing2MinimalDefinitionIn: aRG2Layout environment ].
			aBlock value: def ]