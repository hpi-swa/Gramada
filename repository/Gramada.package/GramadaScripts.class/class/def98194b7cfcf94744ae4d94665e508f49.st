definitions
def98194b7cfcf94744ae4d94665e508f49
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:compiledMethod | 
{ 
#text -> compiledMethod selector . 
#icon -> (ToolIcons iconNamed: (compiledMethod methodClass toolIconSelector: compiledMethod selector)) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'98194b7c-fcf9-4744-ae4d-94665e508f49').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'c3010ea5-4733-f341-8d1a-c71ca126f977').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 5:59:38 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:compiledMethod | 
{ 
#text -> compiledMethod selector . 
#icon -> (ToolIcons iconNamed: (compiledMethod methodClass toolIconSelector: compiledMethod selector)) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})