as yet unclassified
sharedPools: aCollectionOfSymbols

	aCollectionOfSymbols do: [ :poolName |
		self addSharedPool: (RG2PoolVariableDefinition named: poolName asSymbol parent: self).].