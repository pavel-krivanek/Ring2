analysis := MutationTestingAnalysis
    testCasesFrom: ('Ring2-Tests-Changes' asPackage definedClasses)
    mutating: ('Ring2-Changes' asPackage definedClasses)
    using: MutantOperator contents
    with: AllTestsMethodsRunningMutantEvaluationStrategy new.
analysis run.
alive := analysis generalResult aliveMutants.
alive size.
"Display result in Glamorous Browser"
browser := GLMTabulator new.
browser 
	row: #results;
	row: #diff.
browser transmit to: #results.
browser transmit to: #diff; from: #results; andShow: [ :a | 
	a diff display: [ :mutant | {mutant mutant originalSource . mutant mutant modifiedSource}] ].
browser openOn: alive.