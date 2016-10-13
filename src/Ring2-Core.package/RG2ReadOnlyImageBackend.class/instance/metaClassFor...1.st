class description
metaClassFor: aRG2BehaviorDefinition

	| realClass realMetaclass def |
	
	realClass := self realBehaviorFor: aRG2BehaviorDefinition.
	realMetaclass := realClass class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment ].
	^ def
