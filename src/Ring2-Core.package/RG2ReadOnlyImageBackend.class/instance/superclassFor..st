behavior
superclassFor: aRG2BehaviorDefinition

	| realClass realSuperclass def |
	
	realClass := self realBehaviorFor: aRG2BehaviorDefinition.
	realSuperclass := realClass superclass.
	realSuperclass ifNil: [ realSuperclass := realClass ].
	def := self 	definitionFor: realSuperclass ifAbsentRegister: [ 
			realSuperclass asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment ].
	^ def
