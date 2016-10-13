behavior
layoutFor: aRG2BehaviorDefinition

	| realClass realLayout def |
	
	realClass := self realBehaviorFor: aRG2BehaviorDefinition.
	realLayout := realClass classLayout.
	def := self 	definitionFor: realLayout ifAbsentRegister: [ 
			realLayout asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment ].
	^ def