definitions
def850d592b078a6349b68652c63cde1a94
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'1 July 2015 6:25:52 pm'); yourself)); add: (#id->#'850d592b-078a-6349-b686-52c63cde1a94'); add: (#block->[:in :out | (
	[:objects | objects collect: [:tuple |
		[:ohmGrammar :ohmRuleDefine :testString  | 
			|r|
			r := ohmGrammar match: testString asString startingFrom: ohmRuleDefine ruleName.
			r succeeded 
				ifTrue: [r cst]
				ifFalse: [r failure]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:tuple |
		[:ohmGrammar :ohmRuleDefine :testString  | 
			|r|
			r := ohmGrammar match: testString asString startingFrom: ohmRuleDefine ruleName.
			r succeeded 
				ifTrue: [r cst]
				ifFalse: [r failure]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]'); yourself)