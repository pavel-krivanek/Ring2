private - backend access
pvtAsMetaclassTrait

	| newMetaclassTrait |
	
	(self owner resolvedProperties includesAnyOf: #(superclass traitComposition))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	newMetaclassTrait := RG2MetaclassTrait unresolvedWithParent: self owner parent.
	newMetaclassTrait copyPropertiesFrom: self owner.

	(self owner hasResolved: #name)
		ifTrue: [ newMetaclassTrait pvtName: ((self owner name withoutSuffix: ' class'), ' classTrait') asSymbol ].
	newMetaclassTrait pvtLocalMethods: self owner localMethods.
	
	^ newMetaclassTrait
	
	