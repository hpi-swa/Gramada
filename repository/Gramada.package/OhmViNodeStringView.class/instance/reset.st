initialization
reset
	"Configure my view with actual data."
	|scrollArea|

	self 
		removeAllMorphs; 
		changeTableLayout;
		layoutInset: 2.
	
	"Reset model"
	(self model isNil or: [self model objects isEmpty]) ifTrue: [^ self].

	self node: self model objects first.
	(self model nodes first includesKey: #filter)
		ifTrue: [self filterBlock: (self model nodes first at: #filter)]
		ifFalse: [self filterBlock: [:n | true]].

	self addMorph: self resetFilterEdit.
	self filterEdit height: 100.
	self connect: self filterEdit signal: #selectedRowsChanged: toSelector: #filter:.

	self stringViewer: (OhmNodeStringMorph new 
		ohmNode: self node withFilterBlock: self filterBlock; 
		yourself).
	scrollArea := UiScrollArea new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		widgetResizable: false;
		horizontalScrollBarPolicy: #asNeeded;
		verticalScrollBarPolicy: #asNeeded;
		widget: self stringViewer.	

	scrollArea verticalScrollBar
		singleStep: 50.
	self addMorph: scrollArea.	