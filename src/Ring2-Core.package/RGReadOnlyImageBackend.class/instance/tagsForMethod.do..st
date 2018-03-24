method
tagsForMethod: aRGMethod do: aBlock

	| realMethod |
	
	realMethod := self realMethodFor: aRGMethod.
	{ realMethod protocol } do: aBlock.