as yet unclassified
isReferencedIn: aRG2Method 

	^ (aRG2Method ast variableNodes select: #isGlobal) anySatisfy: [ :each | each name = self name ] 