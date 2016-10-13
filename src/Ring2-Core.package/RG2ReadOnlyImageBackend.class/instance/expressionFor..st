slot
expressionFor: aRG2UnknownSlotDefinition

	| realClass realSlot |
	
	realClass := self realBehaviorFor: aRG2UnknownSlotDefinition parent parent.
	realSlot := realClass slotNamed: aRG2UnknownSlotDefinition name.
	^ (realSlot printString copyAfter: $>) trimBoth
