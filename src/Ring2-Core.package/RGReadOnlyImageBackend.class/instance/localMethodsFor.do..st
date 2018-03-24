behavior
localMethodsFor: aRGBehavior do: aBlock

	(self realBehaviorFor: aRGBehavior) localMethods do: [:method |
		| def |
		def := self definitionFor: method ifAbsentRegister: [
			method asRing2MinimalDefinitionIn: aRGBehavior environment].
		aBlock value: def]
