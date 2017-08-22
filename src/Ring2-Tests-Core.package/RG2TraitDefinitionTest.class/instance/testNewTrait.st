tests
testNewTrait

	| trait metaclassTrait comment category package | 
	
	trait  := RG2TraitDefinition unnamed.
	self assert: (trait isRing2Resolved).
	self assert: (trait hasUnresolvedAll: #(classTrait comment category package)).
	self assert: (trait isTrait).

	metaclassTrait  := RG2MetaclassTraitDefinition parent: trait environment.
	trait classTrait: metaclassTrait.
	self assert: (trait hasResolved: #classTrait).
	self assert: (trait classTrait == metaclassTrait).
	self assert: (trait theMetaClass == metaclassTrait).

	comment := RG2CommentDefinition parent: metaclassTrait. 
	self deny: (trait hasComment).
	trait comment:  comment.
	self assert: (trait hasResolved: #comment).
	self assert: (trait comment == comment).
	self deny: (trait hasComment). "the comment has no content"
	comment content: 'some comment'.
	self assert: (trait hasComment).

	category  := #'SomeCategory'.
	trait category: category.
	self assert: (trait hasResolved: #tags).
	self assert: (trait category == category).

	package  := RG2PackageDefinition parent: trait environment.
	trait package:  package.
	self assert: (trait hasResolved: #package).
	self assert: (trait package == package).

		