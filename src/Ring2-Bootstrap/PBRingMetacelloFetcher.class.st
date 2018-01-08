Class {
	#name : #PBRingMetacelloFetcher,
	#superclass : #PBDefinitionFetcher,
	#instVars : [
		'environment',
		'group',
		'version'
	],
	#classInstVars : [
		'default'
	],
	#category : 'Ring2-Bootstrap'
}

{ #category : #'instance-creation' }
PBRingMetacelloFetcher class >> default [

	^ default.
	
]

{ #category : #'instance-creation' }
PBRingMetacelloFetcher class >> default: anObject [

	default := anObject.
]

{ #category : #'instance-creation' }
PBRingMetacelloFetcher class >> version: aString [ 
	
	^ self new
		version: aString;
		yourself
]

{ #category : #'instance-creation' }
PBRingMetacelloFetcher class >> versionNumber: aString group: aGroup [
	
	^ self new
		version: aString;
		group: aGroup;
		yourself
]

{ #category : #initialization }
PBRingMetacelloFetcher >> environment [

	^ environment
]

{ #category : #actions }
PBRingMetacelloFetcher >> exportAllMczTo: aDirectory [
	
	| repository directory | 
	environment announcer suspendAllWhile: [ 
	directory := aDirectory asFileReference ensureCreateDirectory.
	repository := MCDirectoryRepository new directory: directory.
	self packageNames do: [ :packageName | 
		| snap defs package |
		Stdio stdout nextPutAll: packageName asString; lf.
		package := environment ensurePackageNamed: packageName.
		snap := packageName asPackage mcWorkingCopy snapshot.
		defs := snap definitions.
		defs do: [ :each |
			each ensureRing2DefinitionIn: environment package: package ].
		
		"repository basicStoreVersion: mcz "] 
	]
	
	
]

{ #category : #'as yet unclassified' }
PBRingMetacelloFetcher >> exportAllToStFiles: aString [ 
	
]

{ #category : #actions }
PBRingMetacelloFetcher >> fetch [
	
	| calledMethods usedClasses  del cl pom behs|
	
	calledMethods := ((FileStream readOnlyFileNamed: 'calledMethods-proven.txt') contentsOfEntireFile lines collect: #asSymbol) asIdentitySet.
	calledMethods addAll: ((FileStream readOnlyFileNamed: 'calledMethods-unproven.txt') contentsOfEntireFile lines collect: #asSymbol) asIdentitySet.
		
	usedClasses := ((FileStream readOnlyFileNamed: 'classes.txt') contentsOfEntireFile lines collect: #asSymbol) asIdentitySet.	

	usedClasses addAll: ((FileStream readOnlyFileNamed: 'classes-unproven.txt') contentsOfEntireFile lines collect: #asSymbol) asIdentitySet.	



behs := environment ask behaviors.
environment ask packages flatCollect: [ :pkg | 
	pkg definedBehaviors copy do: [ :b |
		(behs includes: b) ifFalse: [ 
			pkg removeDefinedBehavior: b ]
		 ]].

environment clean.

del := environment ask behaviors select: [ :each |
	(usedClasses includes: each baseClass name) not ].
del do: [ :each |
	environment removeBehavior: each ].

environment ask behaviors copy do: [ :each |
	each localMethods copy do: [ :method |
		(calledMethods includes: method fullName) ifFalse: [ 
			each removeLocalMethod: method] 
		] ].

environment behaviorsDo: [ :cls | 
	| tagsToRemove |
	tagsToRemove := cls tagsForMethods select: [ :tag | (cls methodsTaggedWith: tag) isEmpty ].
	tagsToRemove do: [ :tag | cls removeMethodTag: tag].
].

cl := environment ask classNamed: #Class.
pom := environment ask classNamed: #'ProtoObject class'.
pom superclass: cl.

#(#Smalltalk #SourceFiles #Transcript #Undeclared #Display #TextConstants  #Sensor #Processor #SystemOrganization) do: [ :each |
environment addGlobalVariable: (RG2GlobalVariableDefinition named: each parent: environment)].


environment clean.

environment behaviorsDo: [ :beh |
beh superclass == beh ifTrue: [ beh superclass: nil. ] ].

((environment ask behaviorNamed: #TClass) methodNamed: #isValidTraitName:) sourceCode: 
'isValidTraitName: aSymbol 
				^ true'.

((environment ask behaviorNamed: #String) methodNamed: #asSlotCollection) sourceCode: 
'asSlotCollection
	"Parse as slots.
	Example: 
	  ''a b'' asSlotCollection --> {a => Slot. b => Slot}
	"
	^(self substrings: '' '') collect: [ :substring | substring asSlot ]	'.

((environment ask behaviorNamed: #TBehavior) methodNamed: #addTraitSelector:withMethod:) sourceCode: 
'addTraitSelector: aSymbol withMethod: aCompiledMethod
	| source method |
	self ensureLocalSelectors.
	method := aCompiledMethod copy.
	method selector: aSymbol.
	method methodClass: self.
	self isTrait ifFalse: [ method properties at: #traitSource put: aCompiledMethod ].
	self basicAddSelector: aSymbol withMethod: method'.


((environment ask behaviorNamed: #SlotClassBuilder) methodNamed: #validateClassName) sourceCode: 
'validateClassName'.

((environment ask behaviorNamed: #ProtoObject) methodNamed: #doesNotUnderstand:) sourceCode: 
'doesNotUnderstand: aMessage
	
	FileStream stdout nextPutAll: ''DOES NOT UNDERSTAND:''; lf.
	FileStream stdout nextPutAll: aMessage lookupClass name asString.
	FileStream stdout nextPutAll: ''>>#''. 		
	FileStream stdout nextPutAll: aMessage selector asString; lf. 
	thisContext stack do: [:each |
		FileStream stdout nextPutAll: each method methodClass name asString. 
		FileStream stdout nextPutAll: ''>>#''. 		
		FileStream stdout nextPutAll: each selector asString; lf ]. 
			
	Smalltalk exit: 1.'.
	
((environment ask behaviorNamed: #HEInstaller) methodNamed: #installPackage:) sourceCode: 
	'installPackage: aHEPackage
	| newTraits newClasses |
	"RPackageOrganizer default registerPackageNamed: aHEPackage packageName."

	newTraits := aHEPackage traits collect: [ :exportedTrait | self buildTrait: exportedTrait ].

	aHEPackage traits with: newTraits do: [ :exportedTrait :newTrait | self installMethods: exportedTrait into: newTrait ].

	newClasses := aHEPackage classes
		collect: [ :exportedClass | 
			| aClass |
			aClass := self build: exportedClass.
			self installClass: aClass in: exportedClass category.
			aClass ].

	aHEPackage classes with: newClasses do: [ :exportedClass :newClass | self installMethods: exportedClass into: newClass ].

	aHEPackage extensionMethods do: [ :e | self installExtensionMethod: e ]'.

((environment ask behaviorNamed: #SystemAnnouncer) methodNamed: #methodAdded:) sourceCode: 
	'methodAdded: aMethod'.
((environment ask behaviorNamed: #SystemAnnouncer) methodNamed: #methodRecategorized:oldProtocol:) sourceCode: 
	'methodRecategorized: method oldProtocol: oldProtocol'.	
((environment ask behaviorNamed: #SystemAnnouncer) methodNamed: #protocolRemoved:inClass:) sourceCode: 
	'protocolRemoved: aString inClass: aClass'.	
((environment ask behaviorNamed: #SystemAnnouncer) methodNamed: #classReorganized:) sourceCode: 
	'classReorganized: aClass'.	
((environment ask behaviorNamed: #TClassDescription) methodNamed: #notifyRepackage:method:oldProtocol:newProtocol: ) sourceCode: 
	'notifyRepackage: selector method: compiledMethod oldProtocol: oldProtocol newProtocol: newProtocol'.	
((environment ask behaviorNamed: #SystemAnnouncer) methodNamed: #methodChangedFrom:to:oldProtocol:) sourceCode: 
	'methodChangedFrom: oldMethod to: newMethod oldProtocol: oldProtocol'.	

((environment ask behaviorNamed: #SystemAnnouncer) methodNamed: #methodAdded:) sourceCode: 
	'methodAdded: aMethod'.
[ 
((environment ask behaviorNamed: #Class) methodNamed: #binding) sourceCode: 
'binding
       "Answer a binding for the receiver, sharing if possible"
      | binding |
	binding := self environment associationAt: self name ifAbsent: [nil -> self].
       ^binding value == self ifTrue: [binding] ifFalse: [nil -> self]'.
].

Stdio stdout << 'environment cleaned'; lf.

	^ environment.
]

{ #category : #accessing }
PBRingMetacelloFetcher >> group: aString [ 
	group := aString
]

{ #category : #initialization }
PBRingMetacelloFetcher >> initialize [

	super initialize.
	group := #default.
	environment := RG2Environment new.
]

{ #category : #versioning }
PBRingMetacelloFetcher >> majorVersion [

	^ (self versionNumber substrings: '.') first
]

{ #category : #versioning }
PBRingMetacelloFetcher >> minorVersion [

	^ (self versionNumber substrings: '.') second
]

{ #category : #initialization }
PBRingMetacelloFetcher >> packageNames [

	^ #(
			'AST-Core' 
			'Announcements-Core' 
			'CodeExport' 
			'CodeImport' 
			'CodeImportCommandLineHandlers'
			'Colors'
			'Collections-Abstract' 
			'Collections-Arithmetic' 
			'Collections-Atomic' 
			'Collections-Native' 
			'Collections-Sequenceable' 
			'Collections-Stack' 
			'Collections-Streams' 
			'Collections-Strings' 
			'Collections-Support' 
			'Collections-Unordered' 
			'Collections-Weak' 
			'Compression' 
			'FileSystem-Core' 
			'FileSystem-Disk' 
			'Files'
			'Jobs' 
			'Kernel' 
			'Multilingual-Encodings' 
			'Multilingual-Languages' 
			'Multilingual-TextConversion' 
			'Network-UUID' 
			'NonInteractiveTranscript' 
			'OpalCompiler-Core' 
			'PharoBootstrap-Initialization' 
			'RPackage-Core' 
			'Random-Core' 
			'Ring-Core-Containers' 
			'Ring-Core-Kernel' 
			'RingChunkImporter' 
			'Slot' 
			'System-Announcements' 
			'System-BasicCommandLineHandler' 
			'System-Changes' 
			'System-CommandLine' 
			'System-CommandLineHandler' 
			'System-Finalization' 
			'System-Hashing' 
			'System-Localization' 
			'System-Model' 
			'System-Platforms' 
			'System-SessionManager' 
			'System-Sources' 
			'System-Support' 
			'Traits' 
			'Transcript' 
			'UIManager' 
			'Zinc-Character-Encoding-Core' 
			'Zinc-Resource-Meta-Core'
			"'Hermes' "). 
	
]

{ #category : #versioning }
PBRingMetacelloFetcher >> updateNumber [

	^ (self versionNumber substrings: '.') last allButFirst asInteger asString
]

{ #category : #accessing }
PBRingMetacelloFetcher >> version: aString [ 
	version := aString
]

{ #category : #accessing }
PBRingMetacelloFetcher >> versionNumber [
	
	^ (ConfigurationOfPharoBootstrap project version: version) versionNumber asString
]

{ #category : #actions }
PBRingMetacelloFetcher >> withMczDo: aBlock [

	self withMczDo: aBlock group: group 
]

{ #category : #actions }
PBRingMetacelloFetcher >> withMczDo: aBlock group: aGroup [


]
