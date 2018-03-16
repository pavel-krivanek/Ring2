slot
expressionFor: aRG2UnknownSlot

	| realClass realSlot |
	
	realClass := self realBehaviorFor: aRG2UnknownSlot parent parent.
	realSlot := realClass slotNamed: aRG2UnknownSlot name.
	^ (realSlot printString copyAfter: $>) trimBoth
