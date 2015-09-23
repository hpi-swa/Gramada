item model - hierarchy
childAt: index inGroup: groupName
	"Return the child at the given index in the given group. Override this if you need index-based child access."
	
	^ UiPropertyItemNode new
		at: #index put: index;
		at: #text put: (self theOnlyGroup at: index) asString;
		yourself