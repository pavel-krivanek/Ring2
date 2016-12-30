*Calypso-Ring2
extensionSelectorsForClass: aClass

	^ (self extensionMethods select: [ :each | each parent = aClass ]) collect: #name