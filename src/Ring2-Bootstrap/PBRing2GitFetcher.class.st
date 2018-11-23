Class {
	#name : #PBRing2GitFetcher,
	#superclass : #PBDefinitionFetcher,
	#instVars : [
		'commitHash',
		'repository',
		'buildNumber'
	],
	#category : 'Ring2-Bootstrap'
}

{ #category : #accessing }
PBRing2GitFetcher >> buildNumber [
	^ buildNumber
]

{ #category : #accessing }
PBRing2GitFetcher >> buildNumber: anObject [
	buildNumber := anObject
]

{ #category : #versioning }
PBRing2GitFetcher >> commitHash [

	^ commitHash
]

{ #category : #accessing }
PBRing2GitFetcher >> commitHash: anObject [
	commitHash := anObject
]

{ #category : #accessing }
PBRing2GitFetcher >> gitRepositoryUrl: url location: location subdirectory: subdirectory [

	repository := IceRepositoryCreator new 
		remote: (IceRemote url: url);
		location: location asFileReference;
		subdirectory: subdirectory;
		createRepository.
		
	commitHash := (OSEnvironment current getEnv: 'TRAVIS_COMMIT')
		ifNil: [[repository headCommit commitId] ifError: ['UNKNOWN']].

	Transcript cr; show: 'Commit hash: '; show: commitHash asString; cr.
]

{ #category : #versioning }
PBRing2GitFetcher >> majorVersion [

	^ '7'
]

{ #category : #versioning }
PBRing2GitFetcher >> minorVersion [

	^ '0'
]

{ #category : #accessing }
PBRing2GitFetcher >> repository [
	^ repository
]

{ #category : #accessing }
PBRing2GitFetcher >> repository: anObject [
	repository := anObject
]
