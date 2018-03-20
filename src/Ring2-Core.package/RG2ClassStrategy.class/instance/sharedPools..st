private - backend access
sharedPools: aCollectionOfSymbols

	self cleanSharedPools.
	aCollectionOfSymbols do: [ :poolName |
		self addSharedPool: (RG2PoolVariable named: poolName asSymbol parent: self).].