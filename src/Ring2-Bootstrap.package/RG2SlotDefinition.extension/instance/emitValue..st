*Ring2-Bootstrap
emitValue: aMethodBuilder
	aMethodBuilder
		pushLiteralVariable: #slot -> self;
		pushReceiver;
		send: #read: