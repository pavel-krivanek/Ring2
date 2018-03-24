*Ring2-Monticello
asRing2Environment

	| anRGEnvironment |
	anRGEnvironment := RGEnvironment new.
	anRGEnvironment announcer suspendAllWhile: [ 
		self allFileNames do: [ :pn | 
			| snap defs package version |
			package := anRGEnvironment ensurePackageNamed: (pn withoutSuffix: '.package') asSymbol.
			version := self loadVersionFromFileNamed: pn.
			snap := version snapshot.

			defs := snap definitions.
			defs do: [ :each |			
				each ensureRing2DefinitionIn: anRGEnvironment package: package ]
			displayingProgress: 'snapshot'.] 
		 displayingProgress: 'versions'.
		].		
			
	anRGEnvironment clean.
	anRGEnvironment behaviorsDo: [ :beh |
		beh superclass == beh ifTrue: [ beh superclass: nil. ] ].			
	^ anRGEnvironment 