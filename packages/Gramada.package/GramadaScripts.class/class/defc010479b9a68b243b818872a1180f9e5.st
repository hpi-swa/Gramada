definitions
defc010479b9a68b243b818872a1180f9e5
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'21d05d01-95bf-a443-bda1-0423f6914f60'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'1 June 2015 1:30:44 pm'); yourself)); add: (#id->#'c010479b-9a68-b243-b818-872a1180f9e5'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:obj | {#text -> obj printString}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:obj | {#text -> obj printString}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)