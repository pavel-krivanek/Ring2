tests - apply
testApplyOnClassInTheSameEnvironment

	"test applying in the same environment. it should set the class of the name"

	| class change result |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	result := change applyIn: class environment.
	self assert: result equals: class.
		
	self assert: class name equals: #NewName.