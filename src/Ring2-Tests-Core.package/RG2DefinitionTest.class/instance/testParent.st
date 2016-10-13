as yet unclassified
testParent

	| def1 def2 | 
	
	def1 := RG2Definition new.
	def2 := RG2Definition new.
	def2 pvtParent: def1.
	self assert: (def2 parent == def1).
	
