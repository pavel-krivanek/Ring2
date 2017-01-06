behavior
tagsForClass: aRG2BehaviorDefinition do: aBlock

	| realClass |
	
	realClass := self realBehaviorFor: aRG2BehaviorDefinition.
	realClass tags do: [:tag | aBlock value: tag ]
