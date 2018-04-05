tests - revert
testReverseOnClassInTheDifferentEnvironmentWithCleaned

	"try to revert a clened change on the class in the different environment. It should unresolve the method name"

	| env env2 class class2 change result |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	env2 := RGEnvironment new.
	class2 := env2 ensureClassNamed: #NewName.

	result := change reverseIn: env2.
	self assert: result equals: class2.
	self assert: class2 hasResolvedName not.

		