visiting
applyIn: anRGEnvironment inContext: resolvingContext

	| anRGBMethod |

	anRGBMethod := self resolvedMethodFrom: resolvingContext in: anRGEnvironment.
			
	anRGBMethod name: newName.
	
	^ anRGBMethod
		