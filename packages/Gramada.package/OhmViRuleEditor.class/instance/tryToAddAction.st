editing
tryToAddAction
	| attributesClasses existingActions remainingClasses baseActionName |
	
	attributesClasses := self askUserForAttributes.
	attributesClasses first ifNil: [^false].
	baseActionName := self actionNameOfRule.

	existingActions := (OhmAttributes possibleActionsForRule: self ohmRule) 
						select: [:action | attributesClasses includes: action methodClass ].
	remainingClasses := attributesClasses 
		difference: (existingActions collect: [:a | a methodClass]).
	
	existingActions := existingActions , 
		(remainingClasses
			collect: [:klass | klass>>(klass compile: baseActionName , Character cr , '') ]).
	#artifacts openScriptWith: existingActions.

	^ false
