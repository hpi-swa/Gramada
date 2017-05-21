definitions
defb470ebdb97b507499ce27cc8601ff30e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> 'Into' . #clicked ->  [[ohmDebugger into. ViEventNotifier trigger: #GramadaDebuggerStep]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b470ebdb-97b5-0749-9ce2-7cc8601ff30e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '27 May 2015 6:08:46 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:ohmDebugger | { #text -> ''Into'' . #clicked ->  [[ohmDebugger into. ViEventNotifier trigger: #GramadaDebuggerStep]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})