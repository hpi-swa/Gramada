initialization
filter: selectedPositions

	| rulesToShow |

	rulesToShow := self filterEdit model rules atAll: selectedPositions. 
	rulesToShow
		ifEmpty: [self stringViewer filterBlock: [:aNode | true]]
		ifNotEmpty: [self stringViewer filterBlock: [:aNode | rulesToShow includes: aNode ruleName ]]