tests
testHasResolvedOriginForUnresolved

	"test if the change of a unresolved class has an unresolved origin"

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self deny: change hasResolvedOriginName 
	