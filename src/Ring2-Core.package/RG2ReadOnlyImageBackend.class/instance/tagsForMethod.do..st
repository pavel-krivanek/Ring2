method
tagsForMethod: aRG2MethodDefinition do: aBlock

	| realMethod |
	
	realMethod := self realMethodFor: aRG2MethodDefinition.
	{ realMethod protocol } do: aBlock.