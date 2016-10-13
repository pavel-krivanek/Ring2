tests
testCompatibility

	| env1 env2 |
	
	"TODO: needs rewriting"
	
"	env1 := RG2Environment named: 'env1'.
	env2 := RG2Environment named: 'env2'.	
	self deny: (env1 compatibleWith: env2).

	env1 := RG2Environment named: 'env'.
	env2 := RG2Environment named: 'env'.	
	self assert: (env1 compatibleWith: env2).

	env1 := RG2Environment unnamed.
	env2 := RG2Environment unnamed.
	self assert: (env1 compatibleWith: env2).
	
	env1 := RG2Environment named: 'env1'.
	env2 := RG2Environment unnamed.
	self deny: (env1 compatibleWith: env2).

	env1 := RG2Environment unnamed.
	env2 := RG2Environment named: 'env2'.
	self deny: (env1 compatibleWith: env2).		
			
	env1 := RG2Environment unnamed.
	env1 cleanBehaviors.
	env2 := RG2Environment unnamed.
	env2 cleanBehaviors.
	self assert: (env1 compatibleWith: env2).

"
