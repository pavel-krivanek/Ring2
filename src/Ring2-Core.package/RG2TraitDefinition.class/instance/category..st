accessing - backend
category: aString

	self tagWith: aString asSymbol.
	"
	self backend forBehavior setTraitCategoryFor: self to: aString.
	
	self announcer behaviorDefinitionModified: self.
	self announcer behaviorRecategorized: self."