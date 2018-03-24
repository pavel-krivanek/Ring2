as yet unclassified
isReferencedIn: aRGMethod 

	^ (aRGMethod ast variableNodes select: #isGlobal) anySatisfy: [ :each | each name = self name ] 