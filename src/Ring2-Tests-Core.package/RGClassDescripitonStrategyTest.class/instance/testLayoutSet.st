tests
testLayoutSet

	| aRGBehavior layout |
	
	aRGBehavior := RGBehavior newClass.
	layout := RGCompiledMethodLayout parent: aRGBehavior.
	aRGBehavior layout: layout.
	self assert: aRGBehavior layout equals: layout.