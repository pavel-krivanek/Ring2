*Ring2-Monticello
asRing2EnvironmentWith: packageNames

	| aRGEnvironment |
	aRGEnvironment := RGEnvironment new.
	aRGEnvironment announcer suspendAllWhile: [ 
		(packageNames) do: [ :pn | 
			| snap defs package version |
			package := aRGEnvironment ensurePackageNamed: pn asSymbol.
			version := self loadVersionFromFileNamed: pn, '.package'.
			snap := version snapshot.

			defs := snap definitions.
			defs do: [ :each |			
				each ensureRing2DefinitionIn: aRGEnvironment package: package ]
			displayingProgress: 'snap'.] 
		 displayingProgress: 'version'.
		].		
			
	aRGEnvironment clean.
	aRGEnvironment behaviorsDo: [ :beh |
		beh superclass == beh ifTrue: [ beh superclass: nil. ] ].			
	^ aRGEnvironment 