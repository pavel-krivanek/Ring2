*Ring2-Bootstrap
bootstrapWith: aPBRing2GitFetcher architecture: anArchitectureString

	| builder |

	builder := PBImageBuilderSpur50 forArchitecture: anArchitectureString.
	builder definitionFetcher: aPBRing2GitFetcher.
	builder buildNumber: aPBRing2GitFetcher buildNumber.
	builder instVarNamed: #systemDefinition put: self.
	builder espellBackend: EPSimulatorBackend for32Bit forBootstrap.
		
	builder initializeBootstrapEnvironment.
	builder createVMStubs.
	builder flushNewSpace.
	builder createInitialObjects.
	builder createClasses.
	builder installMethods.
	builder installExtensionMethods.
	builder initializeImage.