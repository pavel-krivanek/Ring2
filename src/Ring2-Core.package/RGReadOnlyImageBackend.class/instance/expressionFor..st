slot
expressionFor: aRGUnknownSlot

	| realClass realSlot |
	
	realClass := self realBehaviorFor: aRGUnknownSlot parent parent.
	realSlot := realClass slotNamed: aRGUnknownSlot name.
	^ (realSlot printString copyAfter: $>) trimBoth
