tests
testSlots

	| env slot |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	slot := (Point slotNamed: #x) asRing2MinimalDefinitionIn: env.
	self assert: slot isSlot.
	self assert: slot name equals: #x.
	self assert: slot parent isLayout.
	self assert: slot parent isFixedLayout.
	self assert: slot parent parent name equals: #Point.
	
