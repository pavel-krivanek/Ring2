behavior
localMethodsFor: anRGBehavior do: aBlock

	(self realBehaviorFor: anRGBehavior) localMethods do: [:method |
		| def |
		def := self definitionFor: method ifAbsentRegister: [
			method asRing2MinimalDefinitionIn: anRGBehavior environment].
		aBlock value: def]
