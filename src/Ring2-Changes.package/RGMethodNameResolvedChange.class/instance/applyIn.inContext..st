visiting
applyIn: anRGEnvironment inContext: resolvingContext

	| anRGMethod |

	anRGMethod := self resolvedMethodFrom: resolvingContext in: anRGEnvironment.
	
	anRGMethod name: newName.
	
	^ anRGMethod