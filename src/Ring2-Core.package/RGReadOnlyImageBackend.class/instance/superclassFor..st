behavior
superclassFor: aRGBehavior

	| realClass realSuperclass def |
	
	realClass := self realBehaviorFor: aRGBehavior.
	realSuperclass := realClass superclass.
	realSuperclass ifNil: [ realSuperclass := realClass ].
	def := self 	definitionFor: realSuperclass ifAbsentRegister: [ 
			realSuperclass asRing2MinimalDefinitionIn: aRGBehavior environment ].
	^ def
