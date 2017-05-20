definitions
def8bbd1ad2f7ff344db98b69f4cf799e1c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'pre'); add: (#creationTimeStamp->'18 November 2015 4:05:02 pm'); yourself)); add: (#id->#'8bbd1ad2-f7ff-344d-b98b-69f4cf799e1c'); add: (#block->[:in :out | ([:all | all collect: [:o |
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