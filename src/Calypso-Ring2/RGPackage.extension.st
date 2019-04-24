Extension { #name : #RGPackage }

{ #category : #'*Calypso-Ring2' }
RGPackage >> asPackageName [

	^ self name
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> calypsoEnvironmentType [
	^RPackage
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> classTags [

	self isRingResolved not ifTrue: [ ^ '' ].
	
	 ^ self classes collect: [:aClass | (aClass category ifNil: [ '' ]) withoutPrefix: (self name, '-')] as: Set
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> classesForClassTag: aTag [

	^ self classes select: [ :each | each category  = aTag or: [ each category = (self packageName, '-', aTag) ] ]
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> extendedClassNames [

	^ self extendedClasses collect: #name
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> extendsClass: aClass [

	^ self extendedClasses includes: aClass.
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> extensionSelectorsForClass: aClass [

	^ (self extensionMethods select: [ :each | each parent = aClass ]) collect: #name
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> importClasses: classCollection [
	classCollection do: [ :each | 
		each package: self. ]
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> includesClassesAffectedBy: aSystemAnnouncement [

	^(aSystemAnnouncement affectsClassesDefinedInPackage: self)
		or: [ aSystemAnnouncement affectsClassesExtendedInPackage: self ]
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> isAboutPackage: aPackage [

	^self == aPackage
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> isEmpty [

	^ self definedClasses isEmpty and: [ self extensionMethods isEmpty ]
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> packageManifestOrNil [

	^ nil "TODO"
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> packageName [

	^ self name
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> removeFromSystem [

	self environment removePackage: self.
]

{ #category : #'*Calypso-Ring2' }
RGPackage >> renameTo: aString [

	self name: aString
]
