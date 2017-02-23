actions
fetch
	
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

Stdio stdout << 'environment cleaned'; lf.


	^ environment.