tests
testReverseIn

	| aClass |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	aClass := RGClass named: #NewName.

	self should: [ list reverseIn: aClass environment ] raise: RGNotFoundError.