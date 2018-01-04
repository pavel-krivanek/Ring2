resolving
setNameFromSiblingIfNeeded

	(self hasUnresolved: #name)
		ifTrue: [ self name: (self baseClass name, ' class') asSymbol ]
