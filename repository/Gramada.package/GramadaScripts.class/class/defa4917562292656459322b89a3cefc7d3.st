definitions
defa4917562292656459322b89a3cefc7d3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar grammarName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a4917562-2926-5645-9322-b89a3cefc7d3').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'38368f17-f259-ea4f-a77c-fe3f65f460fe').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '28 May 2015 10:19:46 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:ohmGrammar | #text -> ohmGrammar grammarName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]')})