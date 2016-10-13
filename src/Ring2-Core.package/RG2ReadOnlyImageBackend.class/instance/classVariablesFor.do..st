class
classVariablesFor: aRG2BehaviorDefinition do: aBlock

	| realClass |
	realClass := self realBehaviorFor: aRG2BehaviorDefinition.
	realClass classVariables do: [ :classVariable | 
		| def |
		def := RG2ClassVariableDefinition named: classVariable key parent: aRG2BehaviorDefinition.
		aBlock value: def. ]