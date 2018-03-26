tests
testEmpty

	| changeList |
	
	changeList := RGChangesList new.
	self assert: changeList changes isEmpty.
	self assert: changeList isEmpty. 
	
	self assert: changeList environment notNil.