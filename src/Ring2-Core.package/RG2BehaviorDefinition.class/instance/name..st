accessing - backend
name: aString

	super name: aString.
	
	self announcer behaviorDefinitionModified: self.
	self announcer behaviorRenamed: self.
	
	self subclasses do: [ :subclass |
		subclass isMeta ifFalse: [ 
			self announcer behaviorDefinitionModified: subclass.
			self announcer behaviorParentRenamed: subclass.]]