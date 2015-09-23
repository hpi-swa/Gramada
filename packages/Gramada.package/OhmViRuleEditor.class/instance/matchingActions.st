editing
matchingActions 

	| actions |

	^ ({ self ohmRule } , self ohmRule inlineRules)
		gather: [:r | OhmAttributes possibleActionsForRule: r]