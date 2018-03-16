behavior
metaclassFor: aRG2Behavior

	| realBehavior realMetaclass def |
	
	realBehavior := self realBehaviorFor: aRG2Behavior.
	realMetaclass := realBehavior class.
	def := self 	definitionFor: realMetaclass ifAbsentRegister: [ 
			realMetaclass asRing2MinimalDefinitionIn: aRG2Behavior environment ].
	^ def
