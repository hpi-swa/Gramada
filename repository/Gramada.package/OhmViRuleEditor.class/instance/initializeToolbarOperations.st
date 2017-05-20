initialization
initializeToolbarOperations

	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | 
		{
			{#tryToDeleteRule . 'Remove rule'. UiSilkIcons binEmptyIcon. nil. 1} .
			{#browseActions . 'Browse matching actions'. UiFugueIcons  scriptsTextIcon. nil. 1} .
			{#browseCallers . 'Browse callers'. UiFugueIcons  arrowStepIcon. nil. 1} .
			{#tryToAddAction . 'Create Action'. UiSilkIcons awardStarSilver3Icon . nil. 1}
		}].

	super initializeToolbarOperations.