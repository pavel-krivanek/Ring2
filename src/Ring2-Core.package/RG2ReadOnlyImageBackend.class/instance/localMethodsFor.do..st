behavior
localMethodsFor: aRG2BehaviorDefinition do: aBlock

	(self realBehaviorFor: aRG2BehaviorDefinition) localMethods do: [:method |
		| def |
		def := self definitionFor: method ifAbsentRegister: [
			method asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment].
		aBlock value: def]
