resolving
setNameFromSiblingIfNeeded

	(self hasUnresolved: #name)
		ifTrue: [ name := (self metaclass name withoutSuffix: ' class') asSymbol ]
