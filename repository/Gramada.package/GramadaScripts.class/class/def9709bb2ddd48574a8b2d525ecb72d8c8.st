definitions
def9709bb2ddd48574a8b2d525ecb72d8c8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ohmMatchResult | ohmMatchResult ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'9709bb2d-dd48-574a-8b2d-525ecb72d8c8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 4:35:44 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ohmMatchResult | ohmMatchResult ]]
		value: in) do: [:result | out addAll: result asList]]')})