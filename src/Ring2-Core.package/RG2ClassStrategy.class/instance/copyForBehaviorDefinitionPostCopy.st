private - backend access
copyForBehaviorDefinitionPostCopy

	| newVariables newSharedPools |
	super copyForBehaviorDefinitionPostCopy.
	
	newVariables := self classVariables collect: [ :each | each copyWithParent: self owner].
	newSharedPools := self sharedPools collect: [ :each | each shallowCopy. ].

	self pvtCleanClassVariables.
	self pvtCleanSharedPools.
	
	newVariables do: [ :each | self privAddClassVariable: each ].
	newSharedPools do: [ :each | self privAddSharedPool: each ].


