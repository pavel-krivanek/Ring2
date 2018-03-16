behavior
layoutFor: aRG2Behavior

	| realClass realLayout def |
	
	realClass := self realBehaviorFor: aRG2Behavior.
	realLayout := realClass classLayout.
	def := self 	definitionFor: realLayout ifAbsentRegister: [ 
			realLayout asRing2MinimalDefinitionIn: aRG2Behavior environment ].
	^ def