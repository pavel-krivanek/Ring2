*Ring2-Compatibility
methodReference

	| class selector |
	class := self methodClass ifNil: [^nil].
	selector := self selector ifNil: [^nil].
	^RG2MethodDefinition realClass: class selector: selector.
	