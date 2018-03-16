class
classVariablesFor: aRG2Behavior do: aBlock

	| realClass |
	realClass := self realBehaviorFor: aRG2Behavior.
	realClass classVariables do: [ :classVariable | 
		| def |
		def := RG2ClassVariable named: classVariable key parent: aRG2Behavior.
		aBlock value: def. ]