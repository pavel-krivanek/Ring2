*Ring2-Bootstrap
bootstrap

	| builder |

	builder := PBImageBuilderSpur5032bit new.
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