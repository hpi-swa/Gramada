definitions
deff08f246c85f13d4990d60dd64af2c127
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:def | #text -> (ViTextStyler new styledTextFor: def sourceCode asText)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f08f246c-85f1-3d49-90d6-0dd64af2c127').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 June 2015 6:08:58 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:def | #text -> (ViTextStyler new styledTextFor: def sourceCode asText)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]')})