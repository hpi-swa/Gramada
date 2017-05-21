definitions
defbdcdec5a9ca6404f8de6774c3caef595
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:compiledMethod | (OhmSyntaxTestCase ParsingResultsForCase: compiledMethod methodClass) at: compiledMethod selector ifAbsent: [{}]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'bdcdec5a-9ca6-404f-8de6-774c3caef595').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'ee09018a-a620-c743-af27-0373d06491a7').
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '21 May 2017 5:59:38 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:compiledMethod | (OhmSyntaxTestCase ParsingResultsForCase: compiledMethod methodClass) at: compiledMethod selector ifAbsent: [{}]]]
		value: in) do: [:result | out addAll: result asList]]')})