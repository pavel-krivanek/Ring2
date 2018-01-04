resolving
setNameFromSiblingIfNeeded

	(self hasUnresolved: #name)
		ifTrue: [ self name: (self baseTrait name, ' classTrait') asSymbol ]