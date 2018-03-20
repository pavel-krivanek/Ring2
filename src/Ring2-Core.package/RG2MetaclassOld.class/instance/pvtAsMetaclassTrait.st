private
pvtAsMetaclassTrait

	| newMetaclassTrait |
	
	(self resolvedProperties includesAnyOf: #(superclass traitComposition))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	newMetaclassTrait := RG2MetaclassTrait unresolvedWithParent: self parent.
	newMetaclassTrait copyPropertiesFrom: self.

	(self hasResolved: #name)
		ifTrue: [ newMetaclassTrait pvtName: ((name withoutSuffix: ' class'), ' classTrait') asSymbol ].
	newMetaclassTrait pvtLocalMethods: localMethods.
	
	^ newMetaclassTrait
	
	