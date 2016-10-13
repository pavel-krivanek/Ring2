initialization
initializeUnresolved

	super initializeUnresolved.

	extensionMethods := self unresolvedValue: self defaultDefinedBehaviors.
	definedBehaviors := self unresolvedValue: self defaultExtensionMethods.
