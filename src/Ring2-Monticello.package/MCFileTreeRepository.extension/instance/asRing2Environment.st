*Ring2-Monticello
asRing2Environment

	| aRG2Environment |
	aRG2Environment := RG2Environment new.
	aRG2Environment announcer suspendAllWhile: [ 
		self allFileNames do: [ :pn | 
			| snap defs package version |
			package := aRG2Environment ensurePackageNamed: (pn withoutSuffix: '.package') asSymbol.
			version := self loadVersionFromFileNamed: pn.
			snap := version snapshot.

			defs := snap definitions.
			defs do: [ :each |			
				each ensureRing2DefinitionIn: aRG2Environment package: package ]
			displayingProgress: 'snapshot'.] 
		 displayingProgress: 'versions'.
		].		
			
	aRG2Environment clean.
	aRG2Environment behaviorsDo: [ :beh |
		beh superclass == beh ifTrue: [ beh superclass: nil. ] ].			
	^ aRG2Environment 