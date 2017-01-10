triggering
behaviorDefinitionChangedFrom: oldRG2BehaviorDefinition to: newRG2BehaviorDefinition

	self announce: (RG2BehaviorDefinitionModified new 
		behavior: newRG2BehaviorDefinition;
		oldDefinition: oldRG2BehaviorDefinition;
		yourself)