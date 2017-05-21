definitions
defd1e0ad0a5a30cf4d9b29db07dd6cd108
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o |
	([:obj | 
		[:ohmSyntaxTestCaseClass | 
  {#text -> ohmSyntaxTestCaseClass printString . 
   #icon -> (ToolIcons iconNamed: ohmSyntaxTestCaseClass toolIcon) } ] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'d1e0ad0a-5a30-cf4d-9b29-db07dd6cd108').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'32bf281f-e689-474e-a9c5-9ee122a10851').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 5:59:38 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o |
	([:obj | 
		[:ohmSyntaxTestCaseClass | 
  {#text -> ohmSyntaxTestCaseClass printString . 
   #icon -> (ToolIcons iconNamed: ohmSyntaxTestCaseClass toolIcon) } ] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]')})