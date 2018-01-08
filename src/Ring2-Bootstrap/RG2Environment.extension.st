Extension { #name : #RG2Environment }

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> allClasses [

	^ self ask behaviors
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> allClassesAndTraits [

	^ self ask allClassesAndTraits
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> bootstrap [

	| fetcher |
	
	fetcher := PBRing2GitFetcher new.
	fetcher commitHash: 'UNKNOWN'.
	fetcher buildNumber: '1'.
	
	self bootstrapWith: fetcher architecture: '32' to: 'bootstrap.image' asFileReference.
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> bootstrapWith: aPBRing2GitFetcher architecture: anArchitectureString to: imageFileReference [

	| builder |

	builder := PBImageBuilderSpur50 forArchitecture: anArchitectureString.
	builder definitionFetcher: aPBRing2GitFetcher.
	builder buildNumber: aPBRing2GitFetcher buildNumber.
	builder imageFileReference: imageFileReference.
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
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> classNamed: aName [ 

	^ self ask behaviorNamed: aName
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> includesClassNamed: aName [ 

	^ self ask includesClassNamed: aName 
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> packages [

	^ self ask packages
]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> removeAllButBehaviorsNamed: collectionOfNames [

	| toDelete |
	toDelete := self ask behaviors select: [ :each |
		(collectionOfNames includes: each instanceSide name) not ].
	toDelete do: [ :each | self removeBehavior: each ].

]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> removeAllButMethodsNamed: collectionOfNames [

	self ask behaviors copy do: [ :each |
	each localMethods copy do: [ :method |
		(collectionOfNames includes: method fullName) ifFalse: [ 
			method removeFromSystem ] ] ].

]

{ #category : #'*Ring2-Bootstrap' }
RG2Environment >> removeEmptyMethodTags [

	self behaviorsDo: [ :cls | 
		| tagsToRemove |
		tagsToRemove := cls tagsForMethods select: [ :tag | (cls methodsTaggedWith: tag) isEmpty ].
		tagsToRemove do: [ :tag | cls removeMethodTag: tag].
	].
]
