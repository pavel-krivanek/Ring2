environment
packagesFor: aRG2Environment do: aBlock

	| enumerated |
	
	enumerated := IdentitySet new. 
	
	self environment1 packagesDo: [ :each |
		| corresponding | 
		corresponding := each correspondingObjectIn: environment2.
		
		enumerated add: each.
		corresponding 
			ifNil: [	aBlock value: (self copyFor: each) ]
			ifNotNil: [ 
				aBlock value: (self copyFor: (self chooseFrom: each and: corresponding)).
				enumerated add: corresponding ]].
				
	self environment2 packagesDo: [ :each | 
		(enumerated includes: each) 
			ifFalse: [ aBlock value: (self copyFor: each) ] ].