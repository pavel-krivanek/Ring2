*Calypso-Ring2
includesClassesAffectedBy: aSystemAnnouncement

	^(aSystemAnnouncement affectsClassesDefinedInPackage: self)
		or: [ aSystemAnnouncement affectsClassesExtendedInPackage: self ]