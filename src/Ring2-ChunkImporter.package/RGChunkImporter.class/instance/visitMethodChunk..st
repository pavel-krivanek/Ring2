visitor
visitMethodChunk: aChunk

	| theClass theMethod theProtocol |

	theClass := self classNamed: aChunk behaviorName. 
	aChunk isMeta ifTrue: [ 
		theClass := theClass theMetaClass makeResolved].
	
	theMethod := theClass ensureLocalMethodNamed: aChunk methodSelector asSymbol.
	theProtocol := theClass ensureProtocolNamed: aChunk category asSymbol.
	theMethod protocol: theProtocol.
	theMethod sourceCode: aChunk contents.
	theMethod author: (theMethod authorForStamp: aChunk stamp).
	theMethod time: (theMethod timeForStamp: aChunk stamp).
