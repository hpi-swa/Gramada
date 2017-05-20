event handling
mouseLeave: evt

	self stretch highlightOff: evt.

	self hint abandon.
	self hint: nil.