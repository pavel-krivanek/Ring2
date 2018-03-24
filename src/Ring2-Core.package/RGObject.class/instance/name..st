accessing
name: aString

	| oldName result |
	
	oldName := name.
	result := self backend setNameFor: self to: aString.
	self parent child: self renamedFrom: oldName to: aString.
	^ result