definitions
def99ba75b7c1fb0048beadf60c9634619d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:arrayedCollection | arrayedCollection reject: [:e | e isNil ]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'99ba75b7-c1fb-0048-bead-f60c9634619d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '9 June 2015 1:56:49 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:arrayedCollection | arrayedCollection reject: [:e | e isNil ]] value: in)]')})