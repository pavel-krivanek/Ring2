accessing - backend
traitComposition: aRG2TraitCompositionDefinition

	self backend forBehavior setTraitCompositionFor: self to: aRG2TraitCompositionDefinition.

	self announcer behaviorDefinitionModified: self.