definitions
defdd3789ab5d56b14eaeb90b4f17e2b0d3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ohmSyntaxTestCaseClass | ohmSyntaxTestCaseClass testSelectors collect: [:s | ohmSyntaxTestCaseClass>>s] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'dd3789ab-5d56-b14e-aeb9-0b4f17e2b0d3').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'b7ecadbb-578b-4440-baf6-4753c8cac056').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 5:59:38 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ohmSyntaxTestCaseClass | ohmSyntaxTestCaseClass testSelectors collect: [:s | ohmSyntaxTestCaseClass>>s] ]]
		value: in) do: [:result | out addAll: result asList]]')})