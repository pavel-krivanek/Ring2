DONE
copyForBehaviorDefinitionPostCopy

	| newVariables newSharedPools |
	super copyForBehaviorDefinitionPostCopy.
	
	newVariables := self classVariables collect: [ :each | each copyWithParent: self ].
	newSharedPools := self sharedPools collect: [ :each | each shallowCopy. ].

	self pvtCleanClassVariables.
	self pvtCleanSharedPools.
	
	newVariables do: [ :each | self addClassVariable: each ].
	newSharedPools do: [ :each | self addSharedPool: each ].


