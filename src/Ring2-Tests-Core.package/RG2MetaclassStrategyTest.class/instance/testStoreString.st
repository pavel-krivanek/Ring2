tests
testStoreString

	| aRG2Behavior |
	
	aRG2Behavior := RG2Behavior newMetaclass.
	self assert: aRG2Behavior storeString equals: '(RG2Metaclass named: #unresolved)'.

	aRG2Behavior := RG2Metaclass named: #SomeMetaclass.
	self assert: aRG2Behavior storeString equals: '(RG2Metaclass named: #SomeMetaclass)'.	