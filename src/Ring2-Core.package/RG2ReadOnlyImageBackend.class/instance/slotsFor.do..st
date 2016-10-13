pointer layout
slotsFor: aRG2LayoutDefinition do: aBlock
	| realClass |
	realClass := self realBehaviorFor: aRG2LayoutDefinition parent.
	realClass classLayout slots
		do: [ :each | 
			| def |
			def := self
				definitionFor: each
				ifAbsentRegister: [ each asRing2MinimalDefinitionIn: aRG2LayoutDefinition environment ].
			aBlock value: def ]