class description
metaClassFor: aRG2Behavior

	| realClass realMetaclass def |
	
	realClass := self realBehaviorFor: aRG2Behavior.
	realMetaclass := realClass class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRing2MinimalDefinitionIn: aRG2Behavior environment ].
	^ def
