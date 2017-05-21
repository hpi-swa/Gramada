definitions
def58aeeb1302da4545bbde10445a493d2d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'58aeeb13-02da-4545-bbde-10445a493d2d').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'d8ede531-2596-da41-9224-a23bb2ff44d4').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '1 June 2015 1:30:44 pm')})).
(#sourceCode -> '[:in :out | in do: [:obj | (out identityIncludes: obj) ifFalse: [out add: obj]]]')})