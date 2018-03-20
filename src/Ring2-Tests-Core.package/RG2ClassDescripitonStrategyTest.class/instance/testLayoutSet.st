tests
testLayoutSet

	| aRG2Behavior layout |
	
	aRG2Behavior := RG2Behavior newClass.
	layout := RG2CompiledMethodLayout parent: aRG2Behavior.
	aRG2Behavior layout: layout.
	self assert: aRG2Behavior layout equals: layout.