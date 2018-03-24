environment
behaviorsFor: aRGEnvironment do: aBlock

	SystemNavigation default allBehaviors do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRGEnvironment].
		aBlock value: def.].