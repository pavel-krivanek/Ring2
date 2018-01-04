resolving
setNameFromSiblingIfNeeded

	(self hasUnresolved: #name)
		ifTrue: [ name := (self classTrait name withoutSuffix: ' classTrait') asSymbol ]