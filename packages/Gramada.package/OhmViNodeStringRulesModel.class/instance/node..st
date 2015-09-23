item model - hierarchy
node: anOhmNode

	| involvedRuleNames |

	involvedRuleNames := (anOhmNode grammar synthesizedAttribute: OhmInvolvedRules new) 
							value: anOhmNode.
	
	self rules: involvedRuleNames asOrderedCollection sorted.