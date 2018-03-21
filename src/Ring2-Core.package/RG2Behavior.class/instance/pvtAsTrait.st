strategy
pvtAsTrait

	| newTrait |
	
	"TODO: swap strategies"
	
	(self resolvedProperties includesAnyOf: #(superclass traitComposition classVariables sharedPools))
		ifTrue: [self error: 'This class cannot be converted to trait'].
		
	"TODO: check empty layout"
	newTrait := RG2Trait unresolvedWithParent: self parent.
	newTrait copyPropertiesFrom: self.
	newTrait pvtName: name.
	newTrait pvtLocalMethods: localMethods.
	newTrait pvtTags: tags.

	newTrait behaviorStrategy pvtComment: self behaviorStrategy comment.
	newTrait behaviorStrategy pvtPackage: self behaviorStrategy package.
	
	^ newTrait
	
	