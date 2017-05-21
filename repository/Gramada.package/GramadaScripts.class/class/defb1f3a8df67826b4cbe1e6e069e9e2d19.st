definitions
defb1f3a8df67826b4cbe1e6e069e9e2d19
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:ohmSyntaxTestCaseClass | 
 | testCase |
 testCase := ohmSyntaxTestCaseClass.
 {#text -> 'Rerun all' . #clicked -> [[testCase suite run. ViEventNotifier trigger: #GramadaSyntaxTestsExecuted]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b1f3a8df-6782-6b4c-be1e-6e069e9e2d19').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'3e0fe399-dfee-bb4e-85b7-832904037020').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 5:59:38 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:ohmSyntaxTestCaseClass | 
 | testCase |
 testCase := ohmSyntaxTestCaseClass.
 {#text -> ''Rerun all'' . #clicked -> [[testCase suite run. ViEventNotifier trigger: #GramadaSyntaxTestsExecuted]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})