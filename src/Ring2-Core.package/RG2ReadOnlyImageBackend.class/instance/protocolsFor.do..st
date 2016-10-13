behavior
protocolsFor: aRG2BehaviorDefinition do: aBlock

	| id |
	(self realBehaviorFor: aRG2BehaviorDefinition) protocols do: [:protocolName |
		| realProtocol def |
		realProtocol := (Protocol name: protocolName). 
		id := ('protocol:', aRG2BehaviorDefinition name, ':', protocolName) asSymbol.
		def := self definitionFor: id ifAbsentRegister: [
			Transcript show: id; cr.
			realProtocol asRing2MinimalDefinitionIn: aRG2BehaviorDefinition environment parent: aRG2BehaviorDefinition].
		aBlock value: def]
