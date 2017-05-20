actions
ruleDescr: aNode commentKeyword: keyword commentText: text lineEnding: character

	^ { self rangeFrom: keyword type: #commentKeyword . 
		self rangeFrom: text type: #commentText }