actions
ruleDescr: aNode commentKeyword: keyword commentText: text lineEnding: character

	^ { self rangeFrom: keyword type: #ohmCommentKeyword . 
		self rangeFrom: text type: #ohmCommentText }