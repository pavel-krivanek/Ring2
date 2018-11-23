Class {
	#name : #RGChangesResolvingContextTest,
	#superclass : #RGTest,
	#instVars : [
		'resolvingContext'
	],
	#category : 'Ring2-Tests-Changes'
}

{ #category : #running }
RGChangesResolvingContextTest >> setUp [
	
	| class change |

	super setUp.
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	resolvingContext := RGChangesResolvingContext forChanges: { change }.
]

{ #category : #running }
RGChangesResolvingContextTest >> testFindFirstNewId [

	"test if we correctly find new empty IDs"

	| result |
	
	result := resolvingContext ensureIdFor: #a proposed: 1.
	self assert: result equals: 1.
	resolvingContext ensureIdFor: #a proposed: 2.
	resolvingContext ensureIdFor: #a proposed: 3.
	resolvingContext ensureIdFor: #a proposed: 5.

	self assert: resolvingContext newId equals: 4.
	self assert: resolvingContext newId equals: 6.
]

{ #category : #running }
RGChangesResolvingContextTest >> testNewId [

	"test properties of the new IDs"

	self assert: resolvingContext newId equals: resolvingContext lastId.
	self deny: resolvingContext lastId equals: resolvingContext newId.
	self deny: resolvingContext newId equals: resolvingContext newId.
	self assert: resolvingContext lastId < resolvingContext newId.

]

{ #category : #running }
RGChangesResolvingContextTest >> testOriginFor [

	"try to get origin from an ID"

	self should: [ resolvingContext originFor: 1 ] raise: RGResolvingError.
	resolvingContext ensureIdFor: #a proposed: 1.
	self assert: (resolvingContext originFor: 1) equals: #a.
	

]

{ #category : #running }
RGChangesResolvingContextTest >> testPrepareForChangeWithOriginId [

	"check that the changes origin IDs are kept after registration"

	| class change |

	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	change originId: 42.

	resolvingContext := RGChangesResolvingContext forChanges: { change }.	
		
	self assert: (resolvingContext knowsId: 42).
	self assert: change originId equals: 42.

]

{ #category : #running }
RGChangesResolvingContextTest >> testPrepareForChangeWithoutOriginId [

	"when the change has no ID, the context should not register it"

	| class change |

	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.

	resolvingContext := RGChangesResolvingContext forChanges: { change }.	

	self deny: (change hasOriginId).
	self deny: (resolvingContext knowsId: 42).
	self deny: (resolvingContext knowsId: nil).

]
