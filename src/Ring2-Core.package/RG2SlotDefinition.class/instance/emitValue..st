as yet unclassified
emitValue: aMethodBuilder
	aMethodBuilder
		pushLiteralVariable: #slot -> self;
		pushReceiver;
		send: #read: