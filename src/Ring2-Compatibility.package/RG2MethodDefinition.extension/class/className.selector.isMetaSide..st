*Ring2-Compatibility
className: aString selector: aString2 isMetaSide: isMeta

	| aClass |
	aClass := isMeta 
		ifFalse: [ RG2ClassDefinition new ]
		ifTrue: [ RG2MetaclassDefinition new ].
	aClass instanceSide name: aString asSymbol.
	aClass setNameFromSiblingIfNeeded.
	^ aClass ensureLocalMethodNamed: aString2 asSymbol.	
		
		