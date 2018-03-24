method
methodPackageFor: anRGMethod

	^ (self realMethodFor: anRGMethod) package asRing2MinimalDefinitionIn: anRGMethod environment.