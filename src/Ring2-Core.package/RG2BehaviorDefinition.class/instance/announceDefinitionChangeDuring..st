announcements
announceDefinitionChangeDuring: aBlock

	| oldVersion |
	
	self announcer isSuspended ifFalse: [ 
		oldVersion := self copyForBehaviorDefinition.
		aBlock value.
		self announcer 	behaviorDefinitionChangedFrom: oldVersion to: self.
		self announcer behaviorModificationAppliedTo: self.].

	
	