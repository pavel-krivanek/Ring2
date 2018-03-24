tests
testSimpleNameChange

	| class change |
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self assert: change behavior equals: class.
	self assert: change oldName equals: #OldName.
	self assert: change newName equals: #NewName.
	