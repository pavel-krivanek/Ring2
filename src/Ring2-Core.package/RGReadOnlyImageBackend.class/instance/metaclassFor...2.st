behavior
metaclassFor: aRGBehavior

	| realBehavior realMetaclass def |
	
	realBehavior := self realBehaviorFor: aRGBehavior.
	realMetaclass := realBehavior class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRing2MinimalDefinitionIn: aRGBehavior environment ].
	^ def
