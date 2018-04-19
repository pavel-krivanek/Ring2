private - backend access
pvtBaseClass: anRGClass

	self environment verifyOwnership: anRGClass.

	^ baseClass := anRGClass