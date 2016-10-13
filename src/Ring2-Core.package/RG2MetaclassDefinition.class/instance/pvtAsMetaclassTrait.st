private
pvtAsMetaclassTrait

	| newMetaclassTrait |
	
	(self resolvedProperties includesAnyOf: #(superclass traitComposition))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	newMetaclassTrait := RG2TraitDefinition parent: self parent.
	newMetaclassTrait pvtName: name.
	newMetaclassTrait pvtLocalMethods: localMethods.
	
	^ newMetaclassTrait
	
	