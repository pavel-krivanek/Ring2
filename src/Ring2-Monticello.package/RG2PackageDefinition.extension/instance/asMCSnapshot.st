*Ring2-Monticello
asMCSnapshot

	| definitions | 
	
	definitions := (((self definedBehaviors reject: #isMeta) collect: #asMCDefinition), (self extensionMethods collect: #asMCDefinition)) asOrderedCollection.
	definitions addAll: ((self definedBehaviors, (self definedBehaviors collect: #metaclass)) flatCollect: [ :behavior |
		behavior localMethods collect: [ :method | method asMCDefinition] ]).
	
	^ MCSnapshot fromDefinitions: definitions.