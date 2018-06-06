*Ring2-Experiments
testMerge

	| def1 def2 | 
	
	"we cannot test RGObject directly here"
	def1 := RGClass named: #SomeDefinition.
	def2 := RGClass unnamed.
	def1 merge: def2.
	self assert: (def1 hasResolvedName).
	self assert: def1 name equals: #SomeDefinition.
	
	def1 := RGClass unnamed.
	def2 := RGClass named: #SomeDefinition.
	def1 merge: def2.
	self assert: (def1 hasResolvedName).
	self assert: def1 name equals: #SomeDefinition.
	
	def1 := RGClass unnamed.
	def2 := RGClass unnamed.
	def1 merge: def2.
	self assert: (def1 hasUnresolved: #name).
	
	def1 := RGClass named: #SomeDefinition.
	def2 := RGClass named: #SomeDefinition.
	def1 merge: def2.
	self assert: (def1 hasResolvedName).
	self assert: def1 name equals: #SomeDefinition.

	def1 := RGClass named: #SomeDefinition1.
	def2 := RGClass named: #SomeDefinition2.
	self should: [def1 merge: def2] raise: RGMergeError.
	