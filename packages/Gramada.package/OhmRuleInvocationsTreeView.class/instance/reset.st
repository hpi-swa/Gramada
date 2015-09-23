initialization
reset
	"Configure my view with actual data."
	

	self model ifNil: [^ self].
	self 
		removeAllMorphs;
		changeTableLayout.

	[self initializeInvocationsViewer]
		on: OhmUndeclaredRuleError
		do: [^ self ].
	
	self scrollArea: UiScrollArea new.
	self scrollArea
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		widgetResizable: false;
		horizontalScrollBarPolicy: #asNeeded;
		verticalScrollBarPolicy: #asNeeded;
		widget: self ruleInvocationsViewer.	

	self addMorph: self scrollArea.
	self scrollArea topLeftInOwner: 0@0.
 	
	self model objects ifNotEmpty: [
		self scrollArea scrollToShow: 
			self ruleInvocationsViewer currentlyHighlightedNode bounds.]

	"Scroll to currently highlighted node"