behavior
tagsForClass: aRGBehavior do: aBlock

	| realClass |
	
	realClass := self realBehaviorFor: aRGBehavior.
	realClass tags do: [:tag | aBlock value: tag ]
