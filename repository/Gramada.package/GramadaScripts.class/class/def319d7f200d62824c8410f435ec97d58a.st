definitions
def319d7f200d62824c8410f435ec97d58a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> 'Over' . #clicked ->  [[ohmDebugger over. ViEventNotifier trigger: #GramadaDebuggerStep]]} ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'319d7f20-0d62-824c-8410-f435ec97d58a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:06:46 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> ''Over'' . #clicked ->  [[ohmDebugger over. ViEventNotifier trigger: #GramadaDebuggerStep]]} ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})