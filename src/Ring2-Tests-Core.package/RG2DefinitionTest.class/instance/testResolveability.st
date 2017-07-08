tests
testResolveability

	"test if we can recolve standard objects"
	
	{ Object. 42. 'aString'. #aSymbol } do: [ :each |
		self assert: each isRing2FullyResolved.
		self deny: each isRing2FullyUnresolved  ]
	