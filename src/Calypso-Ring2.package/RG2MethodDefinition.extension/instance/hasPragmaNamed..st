*Calypso-Ring2
hasPragmaNamed: aSymbol
	^ self pragmas anySatisfy: [ :pragma | pragma keyword = aSymbol ]