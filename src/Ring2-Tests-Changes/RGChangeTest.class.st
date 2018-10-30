"
analysis := MutationTestingAnalysis
    testCasesFrom: ('Ring2-Tests-Changes' asPackage definedClasses)
    mutating: ('Ring2-Changes' asPackage definedClasses)
    using: MutantOperator contents
    with: AllTestsMethodsRunningMutantEvaluationStrategy new.
analysis run.
alive := analysis generalResult aliveMutants.
alive size.
""Display result in Glamorous Browser""
browser := GLMTabulator new.
browser 
	row: #results;
	row: #diff.
browser transmit to: #results.
browser transmit to: #diff; from: #results; andShow: [ :a | 
	a diff display: [ :mutant | {mutant mutant originalSource . mutant mutant modifiedSource}] ].
browser openOn: alive.
"
Class {
	#name : #RGChangeTest,
	#superclass : #RGTest,
	#category : 'Ring2-Tests-Changes'
}

{ #category : #utility }
RGChangeTest >> checkResolvingReturnsNewObjectsFor: aChange [

	"utility method to check that the resolver provides a different object than the original change was"

	| resolver resolvedChanges |
	
	resolver := RGChangesResolver for: aChange environment.
	resolvedChanges := resolver resolve: { aChange }.
	self deny: resolvedChanges first equals: aChange.	
	
	^ resolvedChanges
]

{ #category : #tests }
RGChangeTest >> testCopy [

	"test the change copying"
	
	| change changeCopy | 
	
	change := RGChange new.
	changeCopy := change copy.
	
	self deny: change identicalTo: changeCopy.
	self assert: change environment equals: changeCopy environment.
	
	
	

]

{ #category : #tests }
RGChangeTest >> testCopyForEnvironment [

	"test a change copy created in a different environment"

	| change changeCopy env | 
	
	change := RGChange new.
	env := RGEnvironment new.
	changeCopy := change copyForEnvironment: env.
	
	self deny: change environment equals: changeCopy environment.
	self assert: changeCopy environment equals: env.
	
	
	

]

{ #category : #tests }
RGChangeTest >> testProperties [

	"test methods that provide access to change properties"

	| change | 
	
	change := RGChange new.
	
	self assert: change hasProperties not.
	self assert: (change hasPropertyNamed: #note) not.
	self assert: change propertyNames isEmpty.
	self assert: (change removePropertyNamed: #notExisting) propertyNames isEmpty.
	self assert: (change propertyNamed: #note ifAbsent: [#someNote]) equals: #someNote.
	self assert: (change hasPropertyNamed: #note) not.
	self assert: (change propertyNamed: #note ifAbsentPut: [#someNote]) equals: #someNote.
	self assert: (change hasPropertyNamed: #note).
	self assert: (change propertyNamed: #note) equals: #someNote.
	self assert: change hasProperties.
	self assert: change propertyNames asArray equals: {#note}.
	change propertyNamed: #note2 put: #someNote2.
	self assert: (change propertyNames asArray includesAll: {#note. #note2}).
	change removePropertyNamed: #note.
	self assert: change propertyNames asArray equals: {#note2}.
	change removePropertyNamed: #note2.
	self assert: change hasProperties not.
	self assert: (change hasPropertyNamed: #note) not.
	self assert: change propertyNames isEmpty.
	

]
