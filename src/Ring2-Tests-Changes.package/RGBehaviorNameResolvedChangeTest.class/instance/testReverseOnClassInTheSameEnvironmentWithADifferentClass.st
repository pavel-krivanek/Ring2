tests
testReverseOnClassInTheSameEnvironmentWithADifferentClass

	| env class class2 change result |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.

	env removeBehavior: class.
	class2 := env ensureClassNamed: #NewName.
	
	result := change reverseIn: class2 environment.
	self deny: result equals: class.
	self assert: result equals: class2.
	self assert: class2 hasResolvedName not.

		