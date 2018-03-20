copying
copyForBehaviorDefinitionPostCopy
self halt.
	super copyForBehaviorDefinitionPostCopy.
	layout := self layout copyForBehaviorDefinition.
	layout parent: self owner.
