queries - shared pools
sharedPoolNames

	| allSharedPools |
	allSharedPools := OrderedCollection new.
	self sharedPoolsDo: [ :each | allSharedPools add: each name].
	^ allSharedPools asArray