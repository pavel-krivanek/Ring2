accessing
origins

	origins ifNil: [ 
		origins := IdentityDictionary new.
		idsDictionary := IdentityDictionary new ].
	
	^ origins.