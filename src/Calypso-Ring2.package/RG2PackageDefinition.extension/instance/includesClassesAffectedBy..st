*Calypso-Ring2
includesClassesAffectedBy: aClassAnnouncement

	^(aClassAnnouncement packagesAffected includes: self)
		or: [ self extendsClass: aClassAnnouncement classAffected ]