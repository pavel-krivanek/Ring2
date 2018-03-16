behavior
tagsForClass: aRG2Behavior do: aBlock

	| realClass |
	
	realClass := self realBehaviorFor: aRG2Behavior.
	realClass tags do: [:tag | aBlock value: tag ]
