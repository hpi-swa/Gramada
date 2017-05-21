definitions
def3c11ba4412729d42b5008223548c977e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [OhmGrammarSmalltalkProxy allSubclasses
		collect: [:g | g OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]).
(#class -> ViQueryStepDefinition).
(#id -> #'3c11ba44-1272-9d42-b500-8223548c977e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 5:33:44 pm')})).
(#sourceCode -> '[:in :out | [OhmGrammarSmalltalkProxy allSubclasses
		collect: [:g | g OhmInstance]] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]')})