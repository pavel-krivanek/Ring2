tests
testReverseOnClassInTheDifferentEnvironmentWithCleaned

	| env env2 class class2 change result |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	env2 := RGEnvironment new.
	class2 := env2 ensureClassNamed: #NewName.
	
"	self should: [ change reverseIn: env2 ] raise: RGResolvingError.
"	
	self halt.
result := change reverseIn: env2.
	self assert: result equals: class2.
	self assert: class2 hasResolvedName not.

		