definitions
def48da8a27387c0f4681a961696fe5cfaa
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:inputStream | {
	#text -> inputStream asString . 
	#selection -> (1 to: inputStream getState) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'48da8a27-387c-0f46-81a9-61696fe5cfaa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:11:54 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:inputStream | {
	#text -> inputStream asString . 
	#selection -> (1 to: inputStream getState) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})