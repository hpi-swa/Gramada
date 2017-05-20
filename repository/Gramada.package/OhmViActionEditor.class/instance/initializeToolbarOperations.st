as yet unclassified
initializeToolbarOperations 

	super initializeToolbarOperations.

	self toolbar rightPanel
		addGroup: #ohmActions
		icon: UiFugueIcons flaskEmptyIcon
		contents: [:editor | {
			{#browsePotentialChildren . 'Browse potential child actions' . UiFugueIcons priceTagArrowIcon. nil . 1} }].