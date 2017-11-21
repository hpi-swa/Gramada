definitions
deffddec99234bd3947b1b58c1c943b03af
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script baseClassName }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'fddec992-34bd-3947-b1b5-8c1c943b03af').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 November 2017 9:34:46 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> script baseClassName }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})