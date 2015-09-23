initialization
keyboardFocusDelegate 

	^ self submorphs 
		ifEmpty: [ self ]
		ifNotEmptyDo: [:sms | sms first]