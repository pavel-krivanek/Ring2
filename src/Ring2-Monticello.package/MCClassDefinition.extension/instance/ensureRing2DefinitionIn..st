*Ring2-Monticello
ensureRing2DefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		| def metaclassDef |
		def := aRG2Environment ensureClassNamed: self className asSymbol.
		metaclassDef := aRG2Environment ensureClassNamed: (self className, ' class') asSymbol.
		def metaclass: metaclassDef.
		def traitComposition: (self traitCompositionFrom: self traitComposition parent: def).			
		metaclassDef traitComposition: (self traitCompositionFrom: self classTraitComposition parent: metaclassDef).			
		(self superclassName = #nil)
			ifTrue: [ def superclass: def ]
			ifFalse: [ Transcript show: superclassName; cr.def superclass: (aRG2Environment ensureClassNamed: superclassName ) ].
		def category: self category.
		def layout: (self ring2LayoutType parent: def).
		metaclassDef layout: (RG2FixedLayoutDefinition parent: metaclassDef). 
		def comment: (
			(RG2CommentDefinition parent: def) 
				content: self comment;
				author: (self authorForStamp: self commentStamp);
				time: (self timeForStamp: self commentStamp);
				yourself).
		self variables do: [ :each |
			(each class type = #instance) ifTrue: [
				(each name includes: $>) 
					ifFalse: [ def layout addSlot: (RG2InstanceVariableSlotDefinition named: each name parent: def layout)]
					ifTrue: [ 
						| unknownSlot |
						unknownSlot := RG2UnknownSlotDefinition named: ((each name copyUpTo: $=) copyWithout: $#) trimBoth parent: def layout.
						unknownSlot expression: (each name copyAfter: $>) trimBoth.
						def layout addSlot: unknownSlot]].
			(each class type = #class) ifTrue: [ 
				def addClassVariable: (RG2ClassVariableDefinition named: each name parent: def)].
			(each class type = #classInstance) ifTrue: [ 
				metaclassDef layout addSlot: (RG2SlotDefinition named: each name parent: metaclassDef layout)].
			(each class type = #pool) ifTrue: [ 
				def addSharedPool: (RG2PoolVariableDefinition named: each name parent: def)]. ]. 
		def]. 
	