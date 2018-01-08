Extension { #name : #RG2PackageDefinition }

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> asPackageName [

	^ self name
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> calypsoEnvironmentType [

	^ RPackage
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> classTags [

	self isRing2Resolved not ifTrue: [ ^ '' ].
	
	 ^ self classes collect: [:aClass | (aClass category ifNil: [ '' ]) withoutPrefix: (self name, '-')] as: Set
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> classesForClassTag: aTag [

	^ self classes select: [ :each | each category  = aTag or: [ each category = (self packageName, '-', aTag) ] ]
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> extendedClassNames [

	^ self extendedClasses collect: #name
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> extendsClass: aClass [

	^ self extendedClasses includes: aClass.
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> extensionSelectorsForClass: aClass [

	^ (self extensionMethods select: [ :each | each parent = aClass ]) collect: #name
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> importClasses: classCollection [
	classCollection do: [ :each | 
		each package: self. ]
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> includesClassesAffectedBy: aSystemAnnouncement [

	^(aSystemAnnouncement affectsClassesDefinedInPackage: self)
		or: [ aSystemAnnouncement affectsClassesExtendedInPackage: self ]
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> isEmpty [

	^ self definedClasses isEmpty and: [ self extensionMethods isEmpty ]
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> packageName [

	^ self name
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> removeFromSystem [

	self environment removePackage: self.
]

{ #category : #'*Calypso-Ring2' }
RG2PackageDefinition >> renameTo: aString [

	self name: aString
]
