tests
testMerging

"	| env1 env2 |
	
	env1 := RG2Environment named: 'env1'.
	env2 := RG2Environment named: 'env2'.	
	self deny: (env1 canMergeSimplyWith: env2).
	
	env1 := RG2Environment unnamed.
	env2 := RG2Environment unnamed.
	self deny: (env1 canMergeSimplyWith: env2).
	
	env1 := RG2Environment named: 'env1'.
	env2 := RG2Environment unnamed.
	self deny: (env1 canMergeSimplyWith: env2).

	env1 := RG2Environment unnamed.
	env2 := RG2Environment named: 'env2'.
	self deny: (env1 canMergeSimplyWith: env2).		
			
	env1 := RG2Environment unnamed.
	env1 cleanPackages.
	env2 := RG2Environment unnamed.
	env2 cleanPackages.
	self deny: (env1 canMergeSimplyWith: env2).


"