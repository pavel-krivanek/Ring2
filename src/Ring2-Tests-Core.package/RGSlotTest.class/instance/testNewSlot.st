tests
testNewSlot

	| slot | 
	slot  := RGFixedLayout unnamed.
	self assert: (slot isRing2Resolved).
	self assert: (slot hasUnresolved: #name).
	self assert: (slot isLayout).
	