tests
testClass: aClass
	
	| mcDef def env|
	
	mcDef := 	aClass asClassDefinition.
		
	def := mcDef asRing2Definition.
	env := def environment.
	
	self assert: def name equals: aClass name.
	aClass superclass ifNotNil: [ "ProtoObject & co."
		self assert: def superclass name equals: aClass superclass name.].
	self assert: def category equals: aClass category.
	self assert: def layout class equals: (self layoutClassesMapping at: aClass classLayout class).
	
	def layout isPointerLayout ifTrue: [ 
		self assert: (def layout slots collect: #name) equals: aClass instVarNames.].
	self assert: (def metaclass layout slots collect: #name) equals: aClass class instVarNames.	
	self assert: (def classVariables collect: #name) equals: aClass classVarNames.	
	self assert: (def sharedPoolNames collect: #name) equals: aClass sharedPoolNames.	
	
	"Monticello class definition still use only class categories, packages are unresolved"
	self assert: (def unresolvedProperties includes: #package).
	
	self assert: (def resolvedProperties includes: #traitComposition).
	
	self compareTraitComposition: aClass traitComposition with: def traitComposition.
	self compareTraitComposition: aClass class traitComposition with: def metaclass traitComposition.
	