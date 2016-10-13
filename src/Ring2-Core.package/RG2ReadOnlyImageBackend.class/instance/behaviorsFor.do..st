environment
behaviorsFor: aRG2Environment do: aBlock

	SystemNavigation default allBehaviors do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRG2Environment].
		aBlock value: def.].