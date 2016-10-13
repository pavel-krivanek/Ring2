as yet unclassified
name: aString

	super name: aString.
	
	self users do: [ :user|
			self announcer behaviorDefinitionModified: user].