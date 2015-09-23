private
decomposeString: aString

	^ (aString copyReplaceAll: '' , Character tab with: ' ' asTokens: false) lines
	