tests - revert
testRevertOnClassInTheSameEnvironmentWithADifferentClass

	"try to revert in the same environment but on a different class of the same name. It should make its name unresolved"

	| env class class2 change result |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.

	env removeBehavior: class.
	class2 := env ensureClassNamed: #NewName.
	
	result := change revertIn: class2 environment.
	self deny: result equals: class.
	self assert: result equals: class2.
	self assert: class2 hasResolvedName not.

		