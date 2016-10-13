queries - variables
sharedPools

	| allSharedPools |
	allSharedPools := OrderedCollection new.
	self sharedPoolsDo: [ :each | allSharedPools add: each].
	^ allSharedPools 