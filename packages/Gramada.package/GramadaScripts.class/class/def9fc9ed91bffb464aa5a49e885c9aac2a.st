definitions
def9fc9ed91bffb464aa5a49e885c9aac2a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'0373a6a0-bc51-9142-9bbc-d6e9c34e5ad1'); add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'28 May 2015 10:19:46 am'); yourself)); add: (#id->#'9fc9ed91-bffb-464a-a5a4-9e885c9aac2a'); add: (#block->[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)