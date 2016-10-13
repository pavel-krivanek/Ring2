accessing - backend
subject: aRG2TraitDefinition

	self backend forBehavior setSubjectFor: self to: aRG2TraitDefinition.
	
	self announcer behaviorDefinitionModified: self parent parent.