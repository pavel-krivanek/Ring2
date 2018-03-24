tests
testStoreString

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newClass.
	self assert: aRGBehavior storeString equals: '(RGClass named: #unresolved)'.

	aRGBehavior := RGClass named: #SomeClass.
	self assert: aRGBehavior storeString equals: '(RGClass named: #SomeClass)'.	