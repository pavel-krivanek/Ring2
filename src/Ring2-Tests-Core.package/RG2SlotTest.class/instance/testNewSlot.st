tests
testNewSlot

	| slot | 
	slot  := RG2FixedLayout unnamed.
	self assert: (slot isRing2Resolved).
	self assert: (slot hasUnresolved: #name).
	self assert: (slot isLayout).
	