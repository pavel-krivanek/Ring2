queries - shared pools
sharedPools

	| allSharedPools |
	allSharedPools := OrderedCollection new.
	self sharedPoolsDo: [ :each | allSharedPools add: (self environment ask behaviorNamed: each name)].
	^ allSharedPools 