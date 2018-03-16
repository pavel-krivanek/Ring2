behavior
superclassFor: aRG2Behavior

	| realClass realSuperclass def |
	
	realClass := self realBehaviorFor: aRG2Behavior.
	realSuperclass := realClass superclass.
	realSuperclass ifNil: [ realSuperclass := realClass ].
	def := self 	definitionFor: realSuperclass ifAbsentRegister: [ 
			realSuperclass asRing2MinimalDefinitionIn: aRG2Behavior environment ].
	^ def
