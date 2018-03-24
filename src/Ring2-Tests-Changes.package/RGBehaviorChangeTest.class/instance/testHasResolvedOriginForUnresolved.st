tests
testHasResolvedOriginForUnresolved

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self deny: change hasResolvedOrigin 
	