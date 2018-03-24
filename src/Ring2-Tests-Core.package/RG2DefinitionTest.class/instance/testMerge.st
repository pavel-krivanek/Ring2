as yet unclassified
testMerge

	| def1 def2 | 
	
	"we cannot test RGObject directly here"
	def1 := RG2Class named: #SomeDefinition.
	def2 := RG2Class unnamed.
	def1 merge: def2.
	self assert: (def1 hasResolvedName).
	self assert: def1 name equals: #SomeDefinition.
	
	def1 := RG2Class unnamed.
	def2 := RG2Class named: #SomeDefinition.
	def1 merge: def2.
	self assert: (def1 hasResolvedName).
	self assert: def1 name equals: #SomeDefinition.
	
	def1 := RG2Class unnamed.
	def2 := RG2Class unnamed.
	def1 merge: def2.
	self assert: (def1 hasUnresolved: #name).
	
	def1 := RG2Class named: #SomeDefinition.
	def2 := RG2Class named: #SomeDefinition.
	def1 merge: def2.
	self assert: (def1 hasResolvedName).
	self assert: def1 name equals: #SomeDefinition.

	def1 := RG2Class named: #SomeDefinition1.
	def2 := RG2Class named: #SomeDefinition2.
	self should: [def1 merge: def2] raise: RG2MergeError.
	