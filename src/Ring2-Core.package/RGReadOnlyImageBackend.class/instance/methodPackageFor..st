method
methodPackageFor: aRGMethod

	^ (self realMethodFor: aRGMethod) package asRing2MinimalDefinitionIn: aRGMethod environment.