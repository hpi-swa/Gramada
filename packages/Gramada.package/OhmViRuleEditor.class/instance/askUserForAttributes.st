editing
askUserForAttributes 

	| relevantAttributes usersChoice |
	relevantAttributes := OhmAttributes allSubclasses.

	usersChoice := UIManager default 
		chooseMultipleFrom: {'...new...'} , (relevantAttributes collect: [:c | c name])
		values: {#
new} , relevantAttributes
		lines: {}
		title: 'Choose attributes to add actions to'.
	usersChoice ifNil: [^ #(nil) ].

	(usersChoice includes: #new)
		ifTrue: ["Request new attribute" |newAttributeDefinition|
				newAttributeDefinition := UIManager default
					request: 'Enter definition of new attribute'
					initialAnswer: 
'OhmSemanticAction 
	subclass: #NewAttribute
	instanceVariableNames: ''''  
	classVariableNames: '''' 
	poolDictionaries: '''' 
	category: ''Uncategorized'''.
				usersChoice := usersChoice , 
					{Compiler new evaluate: newAttributeDefinition in: nil to: nil}].
	
	^ usersChoice difference: {#new}