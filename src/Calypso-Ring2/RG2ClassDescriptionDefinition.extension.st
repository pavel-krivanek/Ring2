Extension { #name : #RG2ClassDescriptionDefinition }

{ #category : #'*Calypso-Ring2' }
RG2ClassDescriptionDefinition >> definitionForNautilus [
	"Answer a String that defines the receiver."


    "This method is supposed to be local in Class because of a good reason.
    We use this pragma to test if Class does not contain some accidental 
    local selectors."

	| aStream poolString |
	
	(self slots anySatisfy: [ :slot | slot isSpecial ]) ifTrue: [ ^ self definitionForNautilusWithSlots ].
	
	poolString := self sharedPoolsString.
	aStream := (String new: 800) writeStream.
	superclass
		ifNil: [ aStream nextPutAll: 'ProtoObject' ]
		ifNotNil: [ aStream nextPutAll: self superclass name ].
	aStream
		nextPutAll: self layout kindOfSubclassDefinitionString;
		store: self name.
	self hasTraitComposition
		ifTrue:
			[ aStream
				cr;
				tab;
				nextPutAll: 'uses: ';
				nextPutAll: self traitCompositionString ].
	aStream
		cr;
		tab;
		nextPutAll: 'instanceVariableNames: ';
		store: self instanceVariablesString.
	aStream
		cr;
		tab;
		nextPutAll: 'classVariableNames: ';
		store: self classVariablesString.
	poolString = ''
		ifFalse:
			[ aStream
				cr;
				tab;
				nextPutAll: 'poolDictionaries: ';
				store: poolString ].
	aStream
		cr;
		tab;
		nextPutAll: 'package: ';
		store: self category asString.
	superclass
		ifNil:
			[ aStream
				nextPutAll: '.';
				cr.
			aStream nextPutAll: self name.
			aStream
				space;
				nextPutAll: 'superclass: nil' ].
	^ aStream contents
]

{ #category : #'*Calypso-Ring2' }
RG2ClassDescriptionDefinition >> definitionForNautilusWithSlots [
	"the class definition with a way to specify slots. Shown when the class defines special Slot
	 NOTE: this is just for testing, the final solution will evolve and be cleaner later"

	| aStream poolString|

	poolString := self sharedPoolsString.

	aStream := (String new: 800) writeStream.
	superclass 
		ifNil: [aStream nextPutAll: 'ProtoObject']
		ifNotNil: [aStream nextPutAll: superclass name].
	aStream nextPutAll: ' subclass: ';
			store: self name.
	(self hasTraitComposition) ifTrue: [
		aStream cr; tab; nextPutAll: 'uses: ';
			nextPutAll: self traitCompositionString].		
			
	(self layout isFixedLayout) ifFalse: [
		aStream cr; tab; nextPutAll: 'layout: ';
			nextPutAll: self layout class name].
	aStream cr; tab; nextPutAll: 'slots: ';
			nextPutAll: self slotDefinitionString.
	aStream cr; tab; nextPutAll: 'classVariables: ';
			nextPutAll: self classVariableDefinitionString.
	poolString = '' ifFalse: [
		aStream cr; tab; nextPutAll: 'poolDictionaries: ';
			store: poolString].
	aStream cr; tab; nextPutAll: 'category: ';
			store: self category asString.

	superclass ifNil: [ 
		aStream nextPutAll: '.'; cr.
		aStream nextPutAll: self name.
		aStream space; nextPutAll: 'superclass: nil'. ].

	^ aStream contents
]

{ #category : #'*Calypso-Ring2' }
RG2ClassDescriptionDefinition >> findGlobalVariable: lookupBlock ifNone: notFoundBlock [ 
	| var |
	var := OCLiteralVariable new.
	var scope: self.
			
	self classPool associationsDo: [ :assoc |
		var assoc: assoc.
		(lookupBlock value: var) ifTrue: [ ^ var ]].
	
	self sharedPools do: [ :pool |
		pool classPool associationsDo: [ :assoc | 
			var assoc: assoc.
			(lookupBlock value: var) ifTrue: [ ^ var ]]].

	self environment associationsDo: [ :assoc |
		var assoc: assoc.
		(lookupBlock value: var) ifTrue: [ ^ var ] ].
	
	^ notFoundBlock value
]

{ #category : #'*Calypso-Ring2' }
RG2ClassDescriptionDefinition >> includesVariablesAffectedBy: aRG2BehaviorAdded [ 
	^false
]

{ #category : #'*Calypso-Ring2' }
RG2ClassDescriptionDefinition >> inheritsFrom: aClass [

	| aSuperclass |
	aSuperclass := self superclass.
	aSuperclass ifNil: [ ^ false ].
	[aSuperclass isRootInEnvironment ]
		whileFalse: 
			[aSuperclass == aClass ifTrue: [^true].
			aSuperclass := aSuperclass superclass].
	^false
]
