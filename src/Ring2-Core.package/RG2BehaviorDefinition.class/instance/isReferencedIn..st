as yet unclassified
isReferencedIn: aRG2MethodDefinition 

	^ (aRG2MethodDefinition ast variableNodes select: #isGlobal) anySatisfy: [ :each | each name = self name ] 