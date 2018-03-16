as yet unclassified
testMerge

	| def1 def2 | 
	
	"we cannot test RG2Definition directly here"
	def1 := RG2Behavior named: #SomeDefinition.
	def2 := RG2Behavior unnamed.
	def1 merge: def2.
	self assert: (def1 hasResolved: #name).
	self assert: def1 name equals: #SomeDefinition.
	
	def1 := RG2Behavior unnamed.
	def2 := RG2Behavior named: #SomeDefinition.
	def1 merge: def2.
	self assert: (def1 hasResolved: #name).
	self assert: def1 name equals: #SomeDefinition.
	
	def1 := RG2Behavior unnamed.
	def2 := RG2Behavior unnamed.
	def1 merge: def2.
	self assert: (def1 hasUnresolved: #name).
	
	def1 := RG2Behavior named: #SomeDefinition.
	def2 := RG2Behavior named: #SomeDefinition.
	def1 merge: def2.
	self assert: (def1 hasResolved: #name).
	self assert: def1 name equals: #SomeDefinition.

	def1 := RG2Behavior named: #SomeDefinition1.
	def2 := RG2Behavior named: #SomeDefinition2.
	self should: [def1 merge: def2] raise: RG2MergeError.
	