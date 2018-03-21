tests
testStoreString

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newClass.
	self assert: aRG2Behavior storeString equals: '(RG2Class named: #unresolved)'.

	aRG2Behavior := RG2Class named: #SomeClass.
	self assert: aRG2Behavior storeString equals: '(RG2Class named: #SomeClass)'.	