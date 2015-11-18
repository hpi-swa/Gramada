definitions
def48da8a27387c0f4681a961696fe5cfaa
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 6:11:54 pm'); yourself)); add: (#id->#'48da8a27-387c-0f46-81a9-61696fe5cfaa'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:inputStream | {
	#text -> inputStream asString . 
	#selection -> (1 to: inputStream getState) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:inputStream | {
	#text -> inputStream asString . 
	#selection -> (1 to: inputStream getState) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)