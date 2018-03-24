class
classVariablesFor: aRGBehavior do: aBlock

	| realClass |
	realClass := self realBehaviorFor: aRGBehavior.
	realClass classVariables do: [ :classVariable | 
		| def |
		def := RGClassVariable named: classVariable key parent: aRGBehavior.
		aBlock value: def. ]