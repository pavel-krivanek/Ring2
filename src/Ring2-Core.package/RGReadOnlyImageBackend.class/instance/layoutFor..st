behavior
layoutFor: aRGBehavior

	| realClass realLayout def |
	
	realClass := self realBehaviorFor: aRGBehavior.
	realLayout := realClass classLayout.
	def := self 	definitionFor: realLayout ifAbsentRegister: [ 
			realLayout asRing2MinimalDefinitionIn: aRGBehavior environment ].
	^ def