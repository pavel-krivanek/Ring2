tests
testEmpty

	| changeList |
	
	changeList := RG2ChangesList new.
	self assert: changeList changes isEmpty.
	self assert: changeList isEmpty. 
	
	self assert: changeList environment isNil.