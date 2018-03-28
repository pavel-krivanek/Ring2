actions
resolvedBehaviorFrom: resolvingContext in: anRGEnvironment

	^ (self resolvedBehaviorOrNilFrom: resolvingContext in: anRGEnvironment)
		ifNil: [ RGResolvingError signal ]