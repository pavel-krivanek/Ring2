announcements
announceDefinitionChangeDuring: aBlock

	| oldVersion |
	
	oldVersion := self copyForBehaviorDefinition.
	aBlock value.
	self announcer 	behaviorDefinitionChangedFrom: oldVersion to: self.
	self announcer behaviorModificationAppliedTo: self.

	
	