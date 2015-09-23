initialize-release
initialize

	super initialize.
	self 
		layoutWidth: self class spacing;
		extent: self class size;
		children: OrderedCollection new;
		color: Color black;
		readOnly: true.
	
	