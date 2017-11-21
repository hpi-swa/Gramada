definitions
defa0a47b490961064e942aba912268c957
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]). #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a0a47b49-0961-064e-942a-ba912268c957').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 November 2017 9:34:46 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]). #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})