tests
testNameChangeAfter

	"test if the change created after the actual name change has correct state"

	| class change |
	
	class := RGClass named: #OldName.
	class name: #RGClass.
	
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change path equals: #(OldName).
	self assert: change oldName equals: #OldName.
	self assert: change newName equals: #NewName.
	