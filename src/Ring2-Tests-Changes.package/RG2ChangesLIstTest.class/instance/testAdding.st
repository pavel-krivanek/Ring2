tests
testAdding

	list add: change1.
	list add: change2.
	list add: change3.
	
	self assert: list size equals: 3.
	self assert: list changes first equals: change1.
	self assert: list changes last equals: change3.	
	
	self assert: list environment equals: change1 environment.
