*Ring2-Experiments
testErrorInformation

	| error def1 def2 |

	error := nil.
	def1 := RGClass named: #SomeDefinition1.
	def2 := RGClass named: #SomeDefinition2.

	[def1 merge: def2] on: RGMergeError do: [ :exception | error := exception ].

	self assert: error notNil.
	self assert: error property equals: #name.
	self assert: error target equals: def1.
	self assert: error source equals: def2.
	