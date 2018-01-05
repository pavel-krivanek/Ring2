*Ring2-Compatibility
method

	| aSelector aClass |
	aClass := (self class environment classNamed: self parent name).
	aClass ifNil: [ ^ nil ].
	aSelector := self name asSymbol.
	^ (aClass includesSelector: aSelector)
		ifTrue: [ aClass>>aSelector ]
		ifFalse: [ nil ]