private - backend access
pvtMetaclass: aRGMetaclass

	self environment verifyOwnership: aRGMetaclass.

	^ metaclass := aRGMetaclass