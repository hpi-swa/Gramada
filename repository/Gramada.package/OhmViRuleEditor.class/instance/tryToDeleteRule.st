editing
tryToDeleteRule
	| msg actions rules |

	actions := self matchingActions.
	rules := self callingRules.
	
	msg := ViOverlayMessageBox new title: 'Remove Method'.
	msg addAction: 'Remove rule #', self ohmRule ruleName icon: UiSilkIcons binIcon receiver: self selectors: #(deleteRule).
	actions size > 0
		ifTrue: [	msg 
			addAction: ('Do not remove, but show me the {1} affected actions' 
				format: {actions size}) 
			icon: UiSilkIcons binIcon 
			receiver: self 
			selectors: #(browseActions)].
	rules size > 0
		ifTrue: [	msg 
			addAction: ('Do not remove, but show me the {1} affected rules' 
				format: {rules size}) 
			icon: UiSilkIcons binIcon 
			receiver: self 
			selectors: #(browseCallers)].
	msg addAction: 'Abort this action.' icon: UiSilkIcons cancelIcon.
	
	msg showAbove: self.
	^ false