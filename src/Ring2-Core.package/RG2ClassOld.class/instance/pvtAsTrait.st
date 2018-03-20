DONE
pvtAsTrait

	| newTrait |
	
	(self resolvedProperties includesAnyOf: #(superclass traitComposition classVariables sharedPools))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	newTrait := RG2Trait unresolvedWithParent: self parent.
	newTrait copyPropertiesFrom: self.
	newTrait pvtName: name.
	newTrait pvtLocalMethods: localMethods.
	newTrait pvtComment: comment.
	newTrait pvtPackage: package.
	newTrait pvtTags: tags.
	
	^ newTrait
	
	