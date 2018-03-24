*Ring2-Bootstrap
removeAllButMethodsNamed: collectionOfNames

	self ask behaviors copy do: [ :each |
	each localMethods copy do: [ :method |
		(collectionOfNames includes: method fullName) ifFalse: [ 
			method removeFromSystem ] ] ].
