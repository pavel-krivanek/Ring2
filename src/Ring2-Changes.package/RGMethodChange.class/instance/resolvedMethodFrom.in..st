as yet unclassified
resolvedMethodFrom: resolvingContext in: anRGEnvironment

	^ (self resolvedMethodOrNilFrom: resolvingContext in: anRGEnvironment)
		ifNil: [ RGResolvingError signal ]