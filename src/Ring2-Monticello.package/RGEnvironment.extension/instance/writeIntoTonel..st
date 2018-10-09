*Ring2-Monticello
writeIntoTonel: aFileReference

	(self ask packages select: #isRingResolved) do: [ :aPackage |
		| aSnapshot info aVersion |
		aSnapshot := aPackage asMCSnapshot.

		info := MCVersionInfo new.
		info instVarNamed: #name put: aPackage name, '-author'.
		aVersion := MCVersion package: (MCPackage new name: aPackage name) info: info snapshot: aSnapshot dependencies: #().
		TonelWriter 
			fileOut: (aVersion)
			on: aFileReference ]		