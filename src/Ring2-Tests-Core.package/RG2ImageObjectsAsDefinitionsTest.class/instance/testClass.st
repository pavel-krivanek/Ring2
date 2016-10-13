tests
testClass

	| def | 
	
	def := Point asRing2Definition.
	self assert: def name equals: #Point.