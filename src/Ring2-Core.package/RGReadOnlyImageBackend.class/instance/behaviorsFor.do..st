environment
behaviorsFor: anRGEnvironment do: aBlock

	SystemNavigation default allBehaviors do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].