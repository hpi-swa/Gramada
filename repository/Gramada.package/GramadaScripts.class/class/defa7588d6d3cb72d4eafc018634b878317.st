definitions
defa7588d6d3cb72d4eafc018634b878317
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [OhmGrammarSmalltalkProxy allSubclasses
		collect: [:g | g OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a7588d6d-3cb7-2d4e-afc0-18634b878317').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'3c11ba44-1272-9d42-b500-8223548c977e').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '28 May 2015 10:19:46 am')})).
(#sourceCode -> '[:in :out | [OhmGrammarSmalltalkProxy allSubclasses
		collect: [:g | g OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})