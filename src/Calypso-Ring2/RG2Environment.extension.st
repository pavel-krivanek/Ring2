Extension { #name : #RG2Environment }

{ #category : #'*Calypso-Ring2' }
RG2Environment >> associationsDo: aBlock [

	self bindings do: aBlock
]

{ #category : #'*Calypso-Ring2' }
RG2Environment >> at: aSymbol [

	^ self ask behaviorNamed: aSymbol
]

{ #category : #'*Calypso-Ring2' }
RG2Environment >> bindings [

	"TODO:"

	| dict |
	
	dict := Dictionary new.
	self globalVariablesDo: [ :each | 
		each name -> each ].
	
	^ dict.
]

{ #category : #'*Calypso-Ring2' }
RG2Environment >> browse [

	 | clyEnv clyNavEnv |

	clyEnv := ClyRing2Environment new.
	clyEnv environment: self.

	clyNavEnv := (ClyNavigationEnvironment over: clyEnv)
		addPlugin: ClyDefaultSystemEnvironmentPlugin new;
	    attachToSystem.

	^ClyFullBrowser new 
		navigationEnvironment: clyNavEnv;
		addPlugin: ClyStandardBrowserPlugin new;
		open
]

{ #category : #'*Calypso-Ring2' }
RG2Environment >> classNames [

	"TODO:"
	^ self allClasses collect: #name.
]

{ #category : #'*Calypso-Ring2' }
RG2Environment >> hasBindingThatBeginsWith: aString [
	"Use the cached class and non-class names for better performance."

	| aName searchBlock |
	searchBlock := [ :element |
		(element beginsWith: aString)
			ifTrue: [ 0 ]
			ifFalse: [
				aString < element
					ifTrue: [ -1 ]
					ifFalse: [ 1 ] ] ].
	aName := self classNames 
		findBinary: searchBlock
		ifNone: [nil].
	aName ifNotNil: [ ^true ].
	aName := self nonClassNames 
		findBinary: searchBlock
		ifNone: [nil].
	^aName notNil
]

{ #category : #'*Calypso-Ring2' }
RG2Environment >> nonClassNames [

	"TODO:"
	^ #()
]
