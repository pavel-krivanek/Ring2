class description
metaClassFor: aRGBehavior

	| realClass realMetaclass def |
	
	realClass := self realBehaviorFor: aRGBehavior.
	realMetaclass := realClass class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRing2MinimalDefinitionIn: aRGBehavior environment ].
	^ def
