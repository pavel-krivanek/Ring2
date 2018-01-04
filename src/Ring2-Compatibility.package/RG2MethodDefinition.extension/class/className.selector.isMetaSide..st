*Ring2-Compatibility
className: aString selector: aString2 isMetaSide: isMeta

	| aClass env |
	env := RG2Environment new.
	aClass := env ensureClassNamed: aString.
	^ aClass ensureLocalMethodNamed: aString2 asSymbol.	
		
		