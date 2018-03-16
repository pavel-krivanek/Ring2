method
tagsForMethod: aRG2Method do: aBlock

	| realMethod |
	
	realMethod := self realMethodFor: aRG2Method.
	{ realMethod protocol } do: aBlock.