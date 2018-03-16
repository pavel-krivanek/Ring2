behavior
localMethodsFor: aRG2Behavior do: aBlock

	(self realBehaviorFor: aRG2Behavior) localMethods do: [:method |
		| def |
		def := self definitionFor: method ifAbsentRegister: [
			method asRing2MinimalDefinitionIn: aRG2Behavior environment].
		aBlock value: def]
