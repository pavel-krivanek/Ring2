private - backend interface
pvtRemoveBehavior: aRGBehavior

	self verifyOwnership: aRGBehavior.
	
	behaviors remove: aRGBehavior.
	
	"TODO:Announce"
	
	