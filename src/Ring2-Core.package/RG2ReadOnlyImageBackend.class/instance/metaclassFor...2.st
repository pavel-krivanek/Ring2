behavior
metaclassFor: aRG2BehaviorDefinition

	| realBehavior realMetaclass def |
	
	realBehavior := self realBehaviorFor: aRG2BehaviorDefinition.
	realMetaclass := realBehavior class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment ].
	^ def
