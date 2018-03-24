tests
testStoreString

	| aRGBehavior |
	
	aRGBehavior := RGBehavior newMetaclass.
	self assert: aRGBehavior storeString equals: '(RGMetaclass named: #unresolved)'.

	aRGBehavior := RGMetaclass named: #SomeMetaclass.
	self assert: aRGBehavior storeString equals: '(RGMetaclass named: #SomeMetaclass)'.	