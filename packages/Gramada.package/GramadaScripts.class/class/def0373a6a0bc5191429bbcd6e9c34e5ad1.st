definitions
def0373a6a0bc5191429bbcd6e9c34e5ad1
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'27 May 2015 5:39:09 pm'); yourself)); add: (#id->#'0373a6a0-bc51-9142-9bbc-d6e9c34e5ad1'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | 
		[:ohmRuleDefine | 
	{ #text -> ohmRuleDefine ruleName.
	#icon -> ((Dictionary newFromPairs: {
OhmRuleDefine . ViIconService blank .
OhmRuleOverride . UiFugueIcons control090SmallIcon . 
OhmRuleExtend . UiFugueIcons controlDouble090SmallIcon .
OhmRuleInline . UiFugueIcons nodeIcon 
}) at: ohmRuleDefine class) } ] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | 
		[:ohmRuleDefine | 
	{ #text -> ohmRuleDefine ruleName.
	#icon -> ((Dictionary newFromPairs: {
OhmRuleDefine . ViIconService blank .
OhmRuleOverride . UiFugueIcons control090SmallIcon . 
OhmRuleExtend . UiFugueIcons controlDouble090SmallIcon .
OhmRuleInline . UiFugueIcons nodeIcon 
}) at: ohmRuleDefine class) } ] value: obj ]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)