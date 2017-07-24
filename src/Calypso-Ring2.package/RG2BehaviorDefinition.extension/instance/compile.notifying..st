*Calypso-Ring2
compile: code notifying: requestor 

	| parseTree ast aMethod |
	
	parseTree := (RBParser 
		parseMethod: code 
		onError: [ :msg :pos | "TODO:" ^ nil ]) methodClass: self.
	
	ast := parseTree doSemanticAnalysisIn: self.

	aMethod := self ensureLocalMethodNamed: ast selector.
	aMethod sourceCode: code.
	
	^ aMethod selector
	