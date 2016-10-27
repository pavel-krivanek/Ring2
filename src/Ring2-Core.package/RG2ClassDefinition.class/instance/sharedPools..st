as yet unclassified
sharedPools: aCollectionOfSymbols

	self cleanSharedPools.
	aCollectionOfSymbols do: [ :poolName |
		self addSharedPool: (RG2PoolVariableDefinition named: poolName asSymbol parent: self).].