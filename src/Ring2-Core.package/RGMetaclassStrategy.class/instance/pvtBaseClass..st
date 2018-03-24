private - backend access
pvtBaseClass: aRGClass

	self environment verifyOwnership: aRGClass.

	^ baseClass := aRGClass