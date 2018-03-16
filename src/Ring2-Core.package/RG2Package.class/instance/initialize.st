initialization
initialize

	super initialize.

	extensionMethods := self unresolvedValue: self defaultDefinedBehaviors.
	definedBehaviors := self unresolvedValue: self defaultExtensionMethods.
	tagsForClasses := self unresolvedValue: self defaultTagsForClasses.
