accessing - backend
expression: aString

	self backend forBehavior setExpressionFor: self to: aString.

	self announcer behaviorDefinitionModified: self parent parent.