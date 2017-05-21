definitions
def850d592b078a6349b68652c63cde1a94
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:ohmGrammar :ohmRuleDefine :testString  | 
			ohmGrammar match: testString asString startingFrom: ohmRuleDefine ruleName] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'850d592b-078a-6349-b686-52c63cde1a94').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'pre').
(#creationTimeStamp -> '1 July 2015 6:25:52 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:ohmGrammar :ohmRuleDefine :testString  | 
			ohmGrammar match: testString asString startingFrom: ohmRuleDefine ruleName] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})