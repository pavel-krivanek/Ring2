accessing
ast
	"Answer my AST with semantic analysis. See #parseTree."

	^ self parseTree doSemanticAnalysisIn: self methodClass